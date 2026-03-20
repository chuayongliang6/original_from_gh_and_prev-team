#!/usr/bin/env python

import socket
import struct
from time import sleep
import rospy
import codecs
import binascii
from sensor_msgs.msg import LaserScan
 
TCP_IP = "192.168.0.111"
PORT_PARAMS = 4002
PORT_RUN = 4001
#BUFFER_SIZE = 2186

rospy.init_node('leimou_publisher')
scan_pub = rospy.Publisher('/leimou/scan', LaserScan, queue_size=1)
r = rospy.Rate(15.2)
counter = 0
socket.setdefaulttimeout(2)
connected = False

#Connect to parameter setting port to set lidar to broadcast mode
while not connected:
	try:
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		s.connect((TCP_IP, PORT_PARAMS))
		connected = True
		MESSAGE = b'\xAA\x88\x88\xAA\xA1\x02\x00\x00\x00\x10\x00\xB3\x88\xAA\xAA\x88'
		s.send(MESSAGE)
		s.shutdown(socket.SHUT_RDWR)
		s.close()
	except socket.error as err:
		#print(err)
		#print("Connection failed. Retrying...")
		s.close()
		sleep(1)
connected = False

#Connect to data port to receive data
while not connected:
	try:
		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		s.connect((TCP_IP, PORT_RUN))
		connected = True
	except socket.error as err:
		#print(err)
		#print("Connection failed. Retrying...")
		s.close()
		sleep(1)

while not rospy.is_shutdown():
	try:
		data = b''
		while not data == b'\xAA\x77\x77\xAA':
			#print('a')
			data = s.recv(4)
		#print('b')
		data = s.recv(2182)
		#print(binascii.hexlify(data))

		scan = LaserScan()
		current_time = rospy.Time.now()
    
		btemp = data[10:12]

		if btemp == b'\x00\x00':
			angle_incre = 0.008726646 #0.5 degrees
		elif btemp == b'\x00\x01':
			angle_incre = 0.005759587 #0.33 degrees
		elif btemp == b'\x00\x02':
			angle_incre = 0.004363323 #0.25 degrees
		elif btemp == b'\x00\x05':
			angle_incre = 0.017453293 #1 degree

		btemp = data[12:14]
		#print(binascii.hexlify(btemp))
		count_ranges = int(codecs.encode(btemp, 'hex'), 16)
		btemp = data[14:14+(2*count_ranges)]
		ranges = struct.unpack('>'+str(count_ranges)+'H', btemp)
		#print(ranges)

		scan.header.stamp = current_time
		scan.header.frame_id = 'laser_frame'
		scan.angle_min = -2.35619449
		scan.angle_max = 2.35619449
		scan.angle_increment = angle_incre
		scan.time_increment = (1.0 / 15.0) / count_ranges
		scan.range_min = 0.0
		scan.range_max = 25.0
   
		for i in ranges:
			scan.ranges.append((i/1000.0))

		#print(scan.ranges)

		scan_pub.publish(scan)
		counter += 1
		#print(counter)
	except Exception as err:
		#print(err)
		sleep(1)
	r.sleep()
s.close()
