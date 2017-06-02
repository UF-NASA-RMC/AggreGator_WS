#ifndef KEYBOARD_CONTROLLER_NODE_CPP
#define KEYBOARD_CONTROLLER_NODE_CPP

//#include <cstdlib>
#include <iostream>
#include <string>
#include "ros/ros.h"
#include "ros/time.h"
#include "ros/duration.h"
#include "shared_files/Drive.h"
#include <stdio.h>
#include <iostream>

//#include <std_msgs/builtin_int16_t>

using std::cout;
using std::endl;
using std::string;


ros::Duration send_freq(0.1);	//Send 10 Messages per Second
ros::Duration idl_timer(0.1);
ros::Publisher drive_pub;
ros::Time sent_time, current_time;

static 	double lGear = 0.0, rGear = 0.0;

int _move(){

	shared_files::Drive drive_msg;
	system("stty raw");
	char input = '0';
  		while( input != '`'){
			current_time = ros::Time::now();
			input = getchar();
//			if( current_time - sent_time > idl_timer){
			switch(input){
			case '1':
				lGear = 0.1f;
				rGear = 0.1f;
				system ("stty cooked");
				ROS_INFO("Speed limited to %.2f%% of max", lGear * 100.0f); //lGear or rGear same value.
				system ("stty raw");
				break;
			case '2':
				lGear = 0.2f;
				rGear = 0.2f;
				break;
			case '3':
				lGear = 0.3f;
				rGear = 0.3f;
				break;
			case '4':
				lGear = 0.4f;
				rGear = 0.4f;
				break;
			case '5':
				lGear = 0.5f;
				rGear = 0.5f;
				break;
			case '6':
				lGear = 0.6f;
				rGear = 0.6f;
				break;
			case '7':
				lGear = 0.7f;
				rGear = 0.7f;
				break;
			case '8':
				lGear = 0.8f;
				rGear = 0.8f;
				break;
			case '9':
				lGear = 0.9f;
				rGear = 0.9f;
				break;
			case 'w':
				drive_msg.left = lGear;
				drive_msg.right = rGear;
				drive_pub.publish(drive_msg);
				sent_time = ros::Time::now();	// Mark the time the message was sent.
				break;
			case 's':
				drive_msg.left = -lGear;
				drive_msg.right = -rGear;
				drive_pub.publish(drive_msg);
				sent_time = ros::Time::now();	// Mark the time the message was sent.
				break;
			case 'd':
				drive_msg.left = lGear;
				drive_msg.right = -rGear;
				drive_pub.publish(drive_msg);
				sent_time = ros::Time::now();	// Mark the time the message was sent.
				break;
			case 'a':
				drive_msg.left = -lGear;
				drive_msg.right = rGear;
				drive_pub.publish(drive_msg);
				sent_time = ros::Time::now();	// Mark the time the message was sent.
				break;
			default:
				drive_msg.left = 0;		// STOP!
				drive_msg.right = 0;
				drive_pub.publish(drive_msg);
				sent_time = ros::Time::now();	// Mark the time the message was sent.
				break;

			}
//			}
		}
	system("clear");
	system ("stty cooked");
	return 0;
}

int main(int argc, char** argv){

	ros::init(argc, argv, "keyboard_controller_node");
	cout <<"W : Forward, D : Right, A : Left, S : Backup \n";
	ros::NodeHandle nh;

	send_freq.fromSec(0.1);

    //Set up publisher on motor_rc, buffer up to 10 msgs
    drive_pub = nh.advertise<shared_files::Drive>("drive_vals", 10);

while(ros::ok() && _move() != 0){

	_move();
	//Call Publishing Method
	ros::spinOnce();
}


return 0;
}
#endif
