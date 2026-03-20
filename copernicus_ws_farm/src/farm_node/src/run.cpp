#include "ros/ros.h"
#include "farm_node/farm_node.h"
#include <geometry_msgs/Twist.h>
#include <vector>
#include <string>
#include <fstream>
#include <iostream>
#include <thread>

// Get the variables from the saved text files 
std::vector<std::string> move_ip_arr;
std::vector<std::string> vel_arr;
void handle_move();

// Variable to check if the handle_move() function is running
static bool is_running=false;
static bool stop=true;
static bool first_press=false;

// Create thread to respond to client request and start the path thread 
bool respondThread(farm_node::farm_node::Request &req, farm_node::farm_node::Response &res){	
	is_running=!(is_running);  //Check is Volta is currently executing path, if yes, then cancel the task
	first_press=true;  //Check if the button is pressed the first time
	res.op=true;
	
}

// The thread to execute the path
void handle_move(){
		
	//ros::init(argc, argv, "Farm_run_server_handle");
	ros::NodeHandle n;
	ros::Publisher velocity_publisher=n.advertise<geometry_msgs::Twist>("farm_button/cmd_vel", 1000);
	geometry_msgs::Twist vel_msg;
	ros::Rate loop_rate(10);

	float vel_l_ip=(float)(std::atof((vel_arr[0]).c_str()));
	float vel_a_ip=(float)(std::atof((vel_arr[1]).c_str()));
	
	while (true){
	if (first_press){	

	for (int i=0; i<move_ip_arr.size(); ++i){

		if((is_running)){
   
		std::string str=move_ip_arr[i];

		if (str.at(0)=='F'){

			double time_to_sleep=(float)(std::atof((str.substr(1,str.length())).c_str())/vel_l_ip);			
			std::cout<<"F"<<'\n';
			std::cout<<time_to_sleep<<'\n';			
			vel_msg.linear.x=vel_l_ip;
			vel_msg.linear.y = 0;
 			vel_msg.linear.z = 0;
  			vel_msg.angular.x = 0;
  			vel_msg.angular.y = 0;
  			vel_msg.angular.z = 0;
			velocity_publisher.publish(vel_msg);
			double start_seconds=ros::Time::now().toSec();
			double current_seconds=ros::Time::now().toSec();
			while((current_seconds-start_seconds)<time_to_sleep){
				if((is_running)){
				velocity_publisher.publish(vel_msg);
				current_seconds=ros::Time::now().toSec();
				loop_rate.sleep();
				}
				else break;
			}	

		}

		else if (str.at(0)=='B'){

			double time_to_sleep=(float)(std::atof((str.substr(1,str.length())).c_str())/vel_l_ip);	
			std::cout<<"B"<<'\n';
			std::cout<<time_to_sleep<<'\n';			
			vel_msg.linear.x=-(vel_l_ip);
			vel_msg.linear.y = 0;
 			vel_msg.linear.z = 0;
  			vel_msg.angular.x = 0;
  			vel_msg.angular.y = 0;
  			vel_msg.angular.z = 0;
			velocity_publisher.publish(vel_msg);
			double start_seconds=ros::Time::now().toSec();
			double current_seconds=ros::Time::now().toSec();
			while((current_seconds-start_seconds)<time_to_sleep){
				if((is_running)){
				velocity_publisher.publish(vel_msg);
				current_seconds=ros::Time::now().toSec();
				loop_rate.sleep();
				}
				else break;
			}	

		}	

		else if (str.at(0)=='R'){
			
			double rad_to_turn=((3.142)/180)*(float)(std::atof((str.substr(1,str.length())).c_str()));
			double time_to_sleep=(float)(rad_to_turn/vel_a_ip);
			std::cout<<"R"<<'\n';
			std::cout<<time_to_sleep<<'\n';					
			vel_msg.linear.x=0;
			vel_msg.linear.y = 0;
 			vel_msg.linear.z = 0;
  			vel_msg.angular.x = 0;
  			vel_msg.angular.y = 0;
  			vel_msg.angular.z = -(vel_a_ip);
			velocity_publisher.publish(vel_msg);
			double start_seconds=ros::Time::now().toSec();
			double current_seconds=ros::Time::now().toSec();
			while((current_seconds-start_seconds)<time_to_sleep){
				if((is_running)){
				velocity_publisher.publish(vel_msg);
				current_seconds=ros::Time::now().toSec();
				loop_rate.sleep();
				}
				else break;
			}

		}	


		
		else if (str.at(0)=='L'){
			
			double rad_to_turn=((3.142)/180)*(float)(std::atof((str.substr(1,str.length())).c_str()));
			double time_to_sleep=(float)(rad_to_turn/vel_a_ip);
			std::cout<<"L"<<'\n';
			std::cout<<time_to_sleep<<'\n';		
			vel_msg.linear.x=0;
			vel_msg.linear.y = 0;
 			vel_msg.linear.z = 0;
  			vel_msg.angular.x = 0;
  			vel_msg.angular.y = 0;
  			vel_msg.angular.z = (vel_a_ip);
			velocity_publisher.publish(vel_msg);
			double start_seconds=ros::Time::now().toSec();
			double current_seconds=ros::Time::now().toSec();
			while((current_seconds-start_seconds)<time_to_sleep){
				if((is_running)){				
				velocity_publisher.publish(vel_msg);
				current_seconds=ros::Time::now().toSec();
				loop_rate.sleep();
				}
				else break;
			}	

		}

		else if (str.at(0)=='C'){
			
			double rad_to_turn=((3.142)/180)*(float)(std::atof((str.substr(1,str.length())).c_str()));
			double time_to_sleep=(float)(rad_to_turn/vel_a_ip);
			std::cout<<"L"<<'\n';
			std::cout<<time_to_sleep<<'\n';		
			vel_msg.linear.x=-(vel_l_ip);
			vel_msg.linear.y = 0;
 			vel_msg.linear.z = 0;
  			vel_msg.angular.x = 0;
  			vel_msg.angular.y = 0;
  			vel_msg.angular.z = (vel_a_ip);
			velocity_publisher.publish(vel_msg);
			double start_seconds=ros::Time::now().toSec();
			double current_seconds=ros::Time::now().toSec();
			while((current_seconds-start_seconds)<time_to_sleep){
				if((is_running)){				
				velocity_publisher.publish(vel_msg);
				current_seconds=ros::Time::now().toSec();
				loop_rate.sleep();
				}
				else break;
			}	

		}

	
		}

		else break;


	}
	
	is_running=false;


	vel_msg.linear.x=0;
	vel_msg.linear.y = 0;
 	vel_msg.linear.z = 0;
  	vel_msg.angular.x = 0;
  	vel_msg.angular.y = 0;
  	vel_msg.angular.z = 0;
	velocity_publisher.publish(vel_msg);

	ros::Duration(0.5).sleep();

	

	} //first_press
	
	} //while loop

}
		
int main (int argc, char **argv)
{

   // Open and read the variables from the file
   std::fstream file;
   float vel_l_ip;
   float vel_a_ip;

   file.open("/home/copernicus/copernicus_ws_farm/src/farm_node/scripts/velocity.txt", std::ios::in);

   if (file.is_open()){
     std::string tp;
     int i=0;
     while(getline(file, tp)){
       vel_arr.push_back(tp);
       ++i;
     }
   }
   file.close();

   file.open("/home/copernicus/copernicus_ws_farm/src/farm_node/scripts/motion.txt", std::ios::in);
   if (file.is_open()){
     std::string tp;
     int i=0;
     while(getline(file, tp)){
       move_ip_arr.push_back(tp);
       ++i;
     }
   }
   file.close();
   std::thread t1(handle_move);

   // Initialise ROS node and Server
   ros::init(argc, argv, "Farm_run_server_node");
   ros::NodeHandle n;

   ros::ServiceServer service = n.advertiseService("farm_run_server", respondThread);
   ROS_INFO("Farm server started");
   ros::spin();

   return 0;
}
