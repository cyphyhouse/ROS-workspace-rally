#!/usr/bin/env python
import rospy
import math
from sensor_msgs.msg import LaserScan
from race.msg import pid_input

desired_trajectory = 1
vel = 1



pub = rospy.Publisher('error', pid_input, queue_size=10)


## Input: data: Lidar scan data
## theta: The angle at which the distance is requried
## OUTPUT: distance of scan at angle theta
def getRange(data,theta):

	
# Find the index of the arary that corresponds to angle theta.
# Return the lidar scan value at that index
# Do some error checking for NaN and ubsurd values
## Your code goes here

        
	#theta ranges from 0 (left) to 90 (forward)	

	theta_rad = math.radians(theta)
	theta_rad = theta_rad + (math.pi)/4
	
	index = theta_rad/data.angle_increment
	index = int(index)

	#print(data.angle_min)
	#print(data.angle_max)
	#print(data.angle_increment)

	
	#print(data.ranges[index])
	


	return data.ranges[index]











	
def callback(data):
	theta = 65;
	a = getRange(data,theta)
	b = getRange(data,15)
	swing = math.radians(50)

	

	## Your code goes here
	intermed_top = a * math.cos(swing) - b
	intermed_bot = a * math.sin(swing)
	arctan_arg = intermed_top/intermed_bot

	alpha = math.atan(arctan_arg)

	AB = b * math.cos(alpha)

	CD = AB + 1 * math.sin(alpha)

	error = CD - desired_trajectory

	#error = AB - desired_trajectory
	#print(error)


	## END



	msg = pid_input()
	msg.pid_error = error
	msg.pid_vel = vel
	pub.publish(msg)


if __name__ == '__main__':
	print("Laser node started")
	rospy.init_node('dist_finder',anonymous = True)
	rospy.Subscriber("scan",LaserScan,callback)
	rospy.spin()
