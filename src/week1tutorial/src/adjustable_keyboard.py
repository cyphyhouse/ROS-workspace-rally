#!/usr/bin/env python
# NOTE: To run, SSH in with -X flag so that pygame console can be run.
import pygame as pg
from pygame.locals import *
import sys
import subprocess
import os
import rospy
from race.msg import drive_param  # import the custom message

FPS = 50  # frames per second: number of messages we wish to publish per sec
STOP = 9780
MAX_SPEED_VEC = 10600
MIN_SPEED_VEC = 9400
MAX_DIRECTION_VEC = 12
MIN_DIRECTION_VEC = -12

DELTA_DIRECTION = 1
DELTA_SPEED_DRIVE = 10
DELTA_SPEED_ACCELERATE = 800
ACCELERATION_PERIOD = 30

WHITE = (255, 255, 255)
# bash command for bagging data using this topic.

# BASH_CMD = "rosbag record drive_parameters"
# BAG_DIR = "/media/ubuntu/9C33-6BBD1/bagfiles"
# CURR_DIR = "/home/ubuntu/catkin_ws/src/week1tutorial/src"
# os.chdir(BAG_DIR)
# process = subprocess.Popen(BASH_CMD, shell=True) #stdout=subprocess.PIPE)
# output, error = process.communicate()
# os.chdir(CURR_DIR)

# ros
rospy.init_node('adjustable_keyboard_talker', anonymous=True)
pub = rospy.Publisher('drive_parameters', drive_param, queue_size=10)


def drive():
    # === initialize ===

    # pygame
    screen = pg.display.set_mode((400, 300))
    pg.init()
    font = pg.font.SysFont("monospace", 60)
    clock = pg.time.Clock()

    # drive
    speed = STOP
    direction = 0
    # states of keys: 0 indicates up, 1 is down.
    k_up = k_down = k_left = k_right = 0
    run = True

    while run:
        terminate = False
        # stall here
        clock.tick(FPS)
        for event in pg.event.get():

            if event.type == pg.KEYDOWN or event.type == pg.KEYUP:
                key = event.key
                down = int(event.type == pg.KEYDOWN)

                # check for terminate
                if key == pg.K_q or key == pg.K_ESCAPE:
                    terminate = True

                # then check for stop/reset
                elif key == pg.K_SPACE:
                    speed = STOP
                    direction = 0

                elif key == pg.K_RSHIFT or key == pg.K_LSHIFT:
                    direction = 0
                # then check for movement
                else:
                    if key == pg.K_LEFT:
                        k_left = down
                    if key == pg.K_RIGHT:
                        k_right = down
                    if key == pg.K_UP:
                        k_up = down
                    if key == pg.K_DOWN:
                        k_down = down

        msg = drive_param()
        # reset speed & direction accordingly.
        if terminate:
            stop()
            return

        speed += DELTA_SPEED_DRIVE * (k_up - k_down)
        direction += DELTA_DIRECTION * (k_right - k_left)

        # keep values within range
        speed = min(MAX_SPEED_VEC, max(MIN_SPEED_VEC, speed))
        direction = min(MAX_DIRECTION_VEC, max(MIN_DIRECTION_VEC, direction))
        msg.velocity = speed
        msg.angle = direction
        pub.publish(msg)

        #screen.fill((0, 0, 0))
        #pg.display.update()

        #s_label = font.render(str("V: {}".format(speed)), 1, WHITE)
        #d_label = font.render(str("A: {}".format(direction)), 1, WHITE)
        #screen.blit(s_label, (20, 20))
        #screen.blit(d_label, (20, 120))

        #pg.display.flip()


def stop():
    msg = drive_param()
    msg.velocity = STOP
    msg.angle = 0
    pub.publish(msg)


def main():
    try:
        drive()
    except:
        raise
    finally:
        stop()


if __name__ == "__main__":
    main()
