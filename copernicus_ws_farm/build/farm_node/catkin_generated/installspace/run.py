#!/usr/bin/env python2

# Run function to command the preset values to the robot

import rospy
import time
import math
from geometry_msgs.msg import Twist
from farm_node.srv import farm_node, farm_nodeResponse 

# Get the variables from the saved text files 
move_ip_list=[]
vel_list=[]

with open("/home/copernicus/copernicus_ws_farm/src/farm_node/scripts/velocity.txt", "r") as f1:
	for line in f1:
		vel_list.append(line.strip())

with open("/home/copernicus/copernicus_ws_farm/src/farm_node/scripts/motion.txt", "r") as f2:
	for line in f2:
		move_ip_list.append(line.strip())		
			

vel_l_ip=float(vel_list[0])
vel_a_ip=float(vel_list[1])


def handle_move(req):

	farm_nodeResponse(1)
	velocity_publisher=rospy.Publisher('nav/cmd_vel', Twist, queue_size=10)
	vel_msg=Twist()
	print("hello")
	r=rospy.Rate(10)

	for move_ip in move_ip_list:
		if (move_ip[0]=="F"):

			time_to_sleep=float(move_ip[1:])/vel_l_ip			
			
			vel_msg.linear.x=vel_l_ip
			vel_msg.linear.y = 0
 			vel_msg.linear.z = 0
  			vel_msg.angular.x = 0
  			vel_msg.angular.y = 0
  			vel_msg.angular.z = 0
			velocity_publisher.publish(vel_msg)
			start_seconds=rospy.get_time()
			current_seconds=rospy.get_time()
			while((current_seconds-start_seconds)<time_to_sleep):
				velocity_publisher.publish(vel_msg)
				current_seconds=rospy.get_time()
				r.sleep()			

		elif (move_ip[0]=="B"):

			time_to_sleep=float(move_ip[1:])/vel_l_ip			

			vel_msg.linear.x=-(vel_l_ip)
			vel_msg.linear.y = 0
 			vel_msg.linear.z = 0
  			vel_msg.angular.x = 0
  			vel_msg.angular.y = 0
  			vel_msg.angular.z = 0
			velocity_publisher.publish(vel_msg)
			start_seconds=rospy.get_time()
			current_seconds=rospy.get_time()
			while((current_seconds-start_seconds)<time_to_sleep):
				velocity_publisher.publish(vel_msg)
				current_seconds=rospy.get_time()
				r.sleep()

		elif (move_ip[0]=="R"):

			rad_to_turn=((math.pi)/180)*float(move_ip[1:])*2
			time_to_sleep=(rad_to_turn/vel_a_ip)		

			vel_msg.linear.x=0
			vel_msg.linear.y = 0
 			vel_msg.linear.z = 0
  			vel_msg.angular.x = 0
  			vel_msg.angular.y = 0
  			vel_msg.angular.z = -(vel_a_ip)
			velocity_publisher.publish(vel_msg)
			start_seconds=rospy.get_time()
			current_seconds=rospy.get_time()
			while((current_seconds-start_seconds)<time_to_sleep):
				velocity_publisher.publish(vel_msg)
				current_seconds=rospy.get_time()
				r.sleep()

		elif (move_ip[0]=="L"):

			rad_to_turn=((math.pi)/180)*float(move_ip[1:])*2	
			time_to_sleep=(rad_to_turn/vel_a_ip)		

			vel_msg.linear.x=0
			vel_msg.linear.y = 0
 			vel_msg.linear.z = 0
  			vel_msg.angular.x = 0
  			vel_msg.angular.y = 0
  			vel_msg.angular.z = vel_a_ip	
			velocity_publisher.publish(vel_msg)
			start_seconds=rospy.get_time()
			current_seconds=rospy.get_time()
			while((current_seconds-start_seconds)<time_to_sleep):
				velocity_publisher.publish(vel_msg)
				current_seconds=rospy.get_time()
				r.sleep()


	vel_msg.linear.x=0
	vel_msg.linear.y = 0
 	vel_msg.linear.z = 0
  	vel_msg.angular.x = 0
  	vel_msg.angular.y = 0
  	vel_msg.angular.z = 0
	velocity_publisher.publish(vel_msg)

	time.sleep(1.0)

	del velocity_publisher
	return 1


if __name__=='__main__':
	# Start the node
	rospy.init_node('run_server')
	s=rospy.Service('farm_run_script', farm_node, handle_move)	
	print("Farm run server started")
	rospy.spin()
