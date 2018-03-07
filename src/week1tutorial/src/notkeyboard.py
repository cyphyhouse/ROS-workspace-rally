#!/usr/bin/env python

import rospy
from race.msg import drive_param # import the custom message
import curses
forward = 0;
left = 0;

stdscr = curses.initscr()
curses.cbreak()
stdscr.keypad(1)
rospy.init_node('keyboard_talker', anonymous=True)
pub = rospy.Publisher('drive_parameters', drive_param, queue_size=10)

stdscr.refresh()

pwmval = ''
stdscr.addstr(2, 20, "Input PWM value for velocity:")
stdscr.addstr(5, 20, "    ")

while pwmval != 'q':
	#key = stdscr.getch()
	pwmval = stdscr.getstr()
	stdscr.refresh()
        

        # fill in the conditions to increment/decrement throttle/steer
	if pwmval==' ' or pwmval=='q':
		forward = 9780.0

	else: 
		forward = float(pwmval)

	stdscr.addstr(3,20,pwmval)
	stdscr.clrtobot()
	stdscr.addstr(5, 20, "    ")
	
	msg = drive_param()
    	msg.velocity = forward
    	msg.angle = left

    	pub.publish(msg)
	
curses.endwin()
