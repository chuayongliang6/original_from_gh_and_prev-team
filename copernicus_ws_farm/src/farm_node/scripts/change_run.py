#!/usr/bin/env python

# Script to get user input about the path required to follow

move_ip_list=[]
vel_l_ip=0
vel_a_ip=0
valid_dir_ip=['F', 'B', 'L', 'R', 'C']


'''Function to get the correct string input'''
#Path details: F10->Move front for 10m, R30->Turn right for 30deg, L10, B30
def get_cmd_str():
	cmd_str=raw_input("Enter the string to be added to the Path" + '\n')

	while(True):
		if(cmd_str=="0"):
			break

		elif (cmd_str[0] in valid_dir_ip):
			try:
				move_ip=float(cmd_str[1:])
				break

			except ValueError:
				cmd_str=""
				cmd_str=raw_input("Enter valid float for distance/angle to move" + '\n')
				continue

		else:
			cmd_str=""
			cmd_str=raw_input("Enter valid string for movement direction" + '\n')
			continue

	return cmd_str
		

if __name__=='__main__':

	# Get the velocities for robot
	vel_l_ip=raw_input("Please enter the linear required velocity for the robot to move at" + '\n')
	vel_a_ip=raw_input("Please enter the angular required velocity for the robot to move at" + '\n')
	vel_list=[vel_l_ip, vel_a_ip]

	# Get the path details: F10->Move front for 10m, R30->Turn right for 30deg, L10, B30; Press 0 to exit 
	while(True):
	
		# Get the path list
		cmd_str=get_cmd_str()

		if (cmd_str=="0"):
			break

		else:
			move_ip_list.append(cmd_str)

	# Write the values to a text file
	with open("velocity.txt", "w") as f1:
		for vel in vel_list:
			f1.write(vel + "\n")

	with open("motion.txt", "w") as f2:
		for motion in move_ip_list:
			f2.write(motion + "\n")

