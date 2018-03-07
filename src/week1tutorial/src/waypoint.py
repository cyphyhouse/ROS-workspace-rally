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
from std_msgs.msg import String
from multiprocessing import Process, Value, Array

FPS = 100  # frames per second: number of messages we wish to publish per sec
COMMUNICATOR_SLEEP_MILLIS = .001    # period for sending/receiving waypoint/acks.
STOP = 9780
MAX_SPEED_VEC = 10080
MIN_SPEED_VEC = 9480
DELTA_DIRECTION = 12
DELTA_SPEED_DRIVE = 300
DELTA_SPEED_ACCELERATE = 800
ACCELERATION_PERIOD = 30
EPSILON_RADIUS = 1
EPSILON_ANGLE = .15
INITIAL_RUN_LOOPS = 5
# bash command for bagging data using this topic.
#BASH_CMD = "rosbag record drive_parameters"
#BAG_DIR = "/media/ubuntu/9C33-6BBD1/bagfiles"
#CURR_DIR = "/home/ubuntu/catkin_ws/src/week1tutorial/src"
#os.chdir(BAG_DIR) 
#process = subprocess.Popen(BASH_CMD, shell=True) #stdout=subprocess.PIPE)
#output, error = process.communicate()
#os.chdir(CURR_DIR)

pub = rospy.Publisher('drive_parameters', drive_param, queue_size=10)  

points = [(-1.57, -.63), (2.43, 1.80), (-1.66, 2.2), (3.31, -0.2), \
        (-1.57, -.63), (2.43, 1.80), (-1.66, 2.2), (3.31, -0.2), \
        (-1.57, -.63), (2.43, 1.80), (-1.66, 2.2), (3.31, -0.2)]
pos = [0, 0]


def deca_callback(data):
    pos[0] = data.x
    pos[1] = data.y

def vicon_callback(data):
    pos[0] = data.pose.position.x
    pos[1] = data.pose.position.y

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
  
    reached = [False]
    waypoint = [0, 0]
    last_waypoint = [False]
    single_ack_entry_flag = [True]
    prev_waypoint = [-1, -1]
    initial = [True]
    #sub = rospy.Subscriber('decaPos', Point, deca_callback)
    sub = rospy.Subscriber('vrpn_client_node/f1car/pose', PoseStamped, vicon_callback)   
    waypoint_listener = rospy.Subscriber("Waypoint_bot0", Point, waypoint_callback,
            (waypoint, last_waypoint, single_ack_entry_flag, prev_waypoint, initial))
    ack_publisher = rospy.Publisher("Reached", String, queue_size=1) 

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
    for i in range(INITIAL_RUN_LOOPS):
        x = pos[0]
        y = pos[1]
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
        # print(pos[0], pos[1], speed, direction)
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

    #stop()
    time.sleep(0.5)
    #waypoint = points.pop(0)
    x_prev, y_prev = path[-1]
    d_prev = 0.0
    a_prev = 0.0
    d_integral = 0.0
    a_integral = 0.0

    while run:
        cycles_driven += 1
        x = pos[0]
        y = pos[1]
        path.append((x,y))
        curr_loc = path[-1]
        prev_loc = path[-2]
        next_loc = get_next_loc(curr_loc, prev_loc)
        #d_target = get_distance(waypoint, curr_loc)
        a_error = get_angle_between_3_pts(center=curr_loc, waypoint=waypoint, next_pos=next_loc)
        if a_error > math.pi:
            a_error = a_error - 2*math.pi
        elif a_error < -math.pi:
            a_error = a_error + 2*math.pi
        # reset values
        speed = STOP
        direction = 0
        terminate = False
        # stall here
        clock.tick(FPS)
        #print(kRight, kLeft, a_error, d_target, waypoint[0], waypoint[1], reached)       

        for event in pg.event.get():
            if event.type == pg.KEYDOWN:
                key = event.key
                if key == pg.K_q:
                    return

        d_target = get_distance(waypoint, curr_loc)
        if d_target < EPSILON_RADIUS:
            initial[0] = False
            #print ("WAYPOINT REACHED, d_target = {}".format(d_target))
            if not last_waypoint[0]:
                #waypoint = points.pop(0)
                reached[0] = True

                a_integral = 0.0
                d_integral = 0.0
                a_prev = 0.0
                d_prev = 0.0
                #continue
            else:
                print("NO POINTS LEFT. DONE")
                stop()
                ack_msg = String(data="TRUE")
                ack_publisher.publish(ack_msg)
                break

        else:
            reached[0] = False
        #print(single_ack_entry_flag, last_waypoint) 
        
        if reached[0] and single_ack_entry_flag[0]:
            print("ACK SENT")
            reached[0] = False
            ack_msg = String(data="TRUE")
            ack_publisher.publish(ack_msg)
            #if single_ack_entry_flag[0]:
            single_ack_entry_flag[0] = False
            
            stop()
            #continue

        
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



        x_prev = x
        y_prev = y
        
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
    #print("STOPPING")
    msg = drive_param()
    msg.velocity = STOP
    msg.angle = 0
    pub.publish(msg)



# TODO: once the messages are set back to meters in double format, we don't need to normalize anymore
def waypoint_callback(data, args):
    waypoint = args[0]
    last_waypoint = args[1]
    single_ack_entry_flag = args[2]
    prev_waypoint = args[3]
    initial = args[4]
    last_waypoint[0] = True if data.z < 0 else False   
    if single_ack_entry_flag[0]:# and not initial[0]:
        prev_waypoint[0] = waypoint[0]
        prev_waypoint[1] = waypoint[1]
    if not single_ack_entry_flag[0] and prev_waypoint != waypoint:
        single_ack_entry_flag[0] = True
    #print(single_ack_entry_flag[0])
    waypoint[0] = data.x / 100.0
    waypoint[1] = data.y / 100.0

    #print("WAYPOINT DATA: {}, {}, PREV WPT: {}, {}, LAST: {}".format(waypoint[0], waypoint[1], prev_waypoint[0], prev_waypoint[1], data.z < 0))

def main():

    rospy.init_node('waypoint_follower', anonymous=True)   
    try:
        drive()
    finally:
        stop()

main()
#
#communicator()
