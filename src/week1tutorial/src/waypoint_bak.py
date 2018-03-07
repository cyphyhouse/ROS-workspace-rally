#!/usr/bin/env python
#NOTE: To run, SSH in with -X flag so that pygame console can be run.
import pygame as pg
import sys
import rospy
import subprocess
import os
import math
import numpy as np
import time
from race.msg import drive_param  # import the custom message
from geometry_msgs.msg import Point, PoseStamped

FPS = 100  # frames per second: number of messages we wish to publish per sec
STOP = 9780
MAX_SPEED_VEC = 10080
MIN_SPEED_VEC = 9480
DELTA_DIRECTION = 10
DELTA_SPEED_DRIVE = 300
DELTA_SPEED_ACCELERATE = 800
ACCELERATION_PERIOD = 30
EPSILON_RADIUS = .6
EPSILON_ANGLE = .4
# bash command for bagging data using this topic.
#BASH_CMD = "rosbag record drive_parameters"
#BAG_DIR = "/media/ubuntu/9C33-6BBD1/bagfiles"
#CURR_DIR = "/home/ubuntu/catkin_ws/src/week1tutorial/src"
#os.chdir(BAG_DIR) 
#process = subprocess.Popen(BASH_CMD, shell=True) #stdout=subprocess.PIPE)
#output, error = process.communicate()
#os.chdir(CURR_DIR)

pub = rospy.Publisher('drive_parameters', drive_param, queue_size=10)
#points = [(3, 3), (6, 6), (3, 6), (6, 3)]
#points = [(-1,-1), (2.5, -1.25), (-.8, 2.5)] 
points = [(-1.57, -.63), (2.43, 1.80), (-1.66, 2.2), (3.31, -0.2), \
        (-1.57, -.63), (2.43, 1.80), (-1.66, 2.2), (3.31, -0.2), \
        (-1.57, -.63), (2.43, 1.80), (-1.66, 2.2), (3.31, -0.2)]
deca_pos = [0, 0]
#vicon_pos = [0,0]

def deca_callback(data):
    deca_pos[0] = data.x
    deca_pos[1] = data.y

def vicon_callback(data):
    deca_pos[0] = data.pose.position.x
    deca_pos[1] = data.pose.position.y

def get_distance(pos_prev, pos_curr):
    return np.sqrt((pos_curr[0] - pos_prev[0]) ** 2 + (pos_curr[1] - pos_prev[1]) ** 2)


def get_angle_between_3_pts(center, waypoint, next_pos):
    n_waypoint = waypoint[0] - center[0], waypoint[1] - center[1]
    n_next_pos = next_pos[0] - center[0], next_pos[1] - center[1]
    theta = np.arctan2(n_waypoint[1], n_waypoint[0]) - np.arctan2(n_next_pos[1], n_next_pos[0])
    return theta


def get_next_loc(curr, prev):
    x_step = curr[0] - prev[0]
    y_step = curr[1] - prev[1]
    return curr[0] + x_step, curr[1] + y_step


def drive():
    pg.display.set_mode((400, 300))
    rospy.init_node('keyboard_talker', anonymous=True)
  
    #sub = rospy.Subscriber('decaPos', Point, deca_callback)
    sub = rospy.Subscriber('vrpn_client_node/f1car/pose', PoseStamped, vicon_callback)
    pg.init()
    clock = pg.time.Clock()
    speed = STOP
    direction = 0
    # states of keys: 0 indicates up, 1 is down.
    kUp = kDown = kLeft = kRight = 0
    run = True
    down = False
    cycles_since_stop = 0
    accelerate = False
    path = []
    cycles_driven = 0    
    curr_delta = DELTA_SPEED_DRIVE
    for i in range(100):
        x = deca_pos[0]
        y = deca_pos[1]
        path.append((x,y))
        x_prev = x
        y_prev = y
        kUp = 1
        kDown = 0
        msg = drive_param() 
        speed += (DELTA_SPEED_DRIVE + 30) * (kUp - kDown)
        direction += DELTA_DIRECTION * (kRight - kLeft)
        msg.velocity = speed
        msg.angle = direction
        # print(kUp, kDown, kLeft, kRight)
        # print(speed, direction)
        # sys.stdout.flush()
        print(deca_pos[0], deca_pos[1], speed, direction)
        pub.publish(msg)
        speed = STOP
        direction = 0
        clock.tick(FPS)
        for event in pg.event.get():
            if event.type == pg.KEYDOWN:
                key = event.key
                if key == pg.K_q:
                    stop()
                    return

    stop()
    time.sleep(2)
    waypoint = points.pop(0)
    x_prev, y_prev = path[-1]
    d_prev = 0.0
    a_prev = 0.0
    d_integral = 0.0
    a_integral = 0.0

    while run:
        cycles_driven += 1
        x = deca_pos[0]
        y = deca_pos[1]
        path.append((x,y))
        curr_loc = path[-1]
        prev_loc = path[-2]
        next_loc = get_next_loc(curr_loc, prev_loc)
        d_target = get_distance(waypoint, curr_loc)
        a_error = get_angle_between_3_pts(center=curr_loc, waypoint=waypoint, next_pos=next_loc)
        if a_error > math.pi:
            a_error = a_error - 2*math.pi

        

        # reset values
        speed = STOP
        direction = 0
        terminate = False
        # stall here
        clock.tick(FPS)
        
        if d_target < EPSILON_RADIUS:
            print ("WAYPOINT REACHED")
            if len(points) > 0:
                waypoint = points.pop(0)
                a_integral = 0.0
                d_integral = 0.0
                a_prev = 0.0
                d_prev = 0.0
                continue
            else:
                print("NO POINTS LEFT. DONE")
                stop()
                break

        d_prev = d_target
        d_integral += d_target

        a_prev = a_error
        a_integral += a_error

        if a_error < -EPSILON_ANGLE:
            kLeft = 0
            kRight = 1
        elif a_error > EPSILON_ANGLE:
            kRight = 0
            kLeft = 1
        else:
            kLeft = 0
            kRight = 0

        print(kRight, kLeft, a_error, d_target, waypoint)

        x_prev = x
        y_prev = y
        
        for event in pg.event.get():
            if event.type == pg.KEYDOWN:
                key = event.key
                if key == pg.K_q:
                    terminate = True
                    break

        msg = drive_param()
        # reset speed & direction accordingly.
        if terminate:
            msg.velocity = STOP
            msg.angle = 0
            pub.publish(msg)
            #process.kill()
            return

        speed += DELTA_SPEED_DRIVE * (kUp - kDown)
        direction += DELTA_DIRECTION * (kRight - kLeft)
        msg.velocity = speed
        msg.angle = direction
        # print(kUp, kDown, kLeft, kRight)
        # print(speed, direction)
        # sys.stdout.flush()
        pub.publish(msg)


def stop():
    msg = drive_param()
    msg.velocity = STOP
    msg.angle = 0
    pub.publish(msg)


def main():
    try:
        drive()
    finally:
        stop()

main()


