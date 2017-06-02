#include <iostream>
#include <cmath>
#include "ros/ros.h"
#include "shared_files/Drive.h"
#include "shared_files/WriteI2C.h"

shared_files::Drive recent_drive_msg;

ros::Time recent_drive_sub_time;
ros::Time recent_drive_pub_time;

ros::Subscriber drive_sub;

void driveSubCallback (const shared_files::Drive drive_msg){
	recent_drive_msg = drive_msg;
	recent_drive_sub_time = ros::Time::now();
}

//generate a stop message for the desired address
shared_files::WriteI2C generate_stop_msg(unsigned char address, unsigned char direction){
        shared_files::WriteI2C i2c_msg;
	//Check if unsigned char will work in a ROS UInt8 message?!
        i2c_msg.addr = address; //Check if this breaks
        i2c_msg.data.push_back(direction); //check if this breaks as well
        i2c_msg.data.push_back(0);
        i2c_msg.data.push_back(0);
        return i2c_msg;
}

shared_files::WriteI2C generate_drive_msg(){
	/* this function always uses the recent_drive_msg
		Each Drive.msg is consists of right & left parameters, which correspond to left & right motors
	*/
	shared_files::WriteI2C i2c_msg;
	//Arduino Motor drive is @ address 4
	i2c_msg.addr = 4;
	/* Note about direction byte, these values are coded as following in the Arduino
		Left & Right go Forward: 0 		==> GO FORWARD
		Left Forward, Right Backward: 1 ==> TURN LEFT
		Left Backward, Right Forward: 2 ==> TURN RIGHT
		Left & Right go Backward: 3 	==> GO BACKWORDS
	*/
	/*
		1,0,-1 are the values that written to I2C by the Joy Node 
		So depending on what is on I2C Drive.msg parameters, the direction will be determined
	*/
	if(recent_drive_msg.left >= 0 && recent_drive_msg.right >= 0){
		//GO FORWARD
		i2c_msg.data.push_back(0);
	}
	if(recent_drive_msg.left >= 0 && recent_drive_msg.right < 0){
		//TURN LEFT
		i2c_msg.data.push_back(1);
	}
	if(recent_drive_msg.left < 0 && recent_drive_msg.right >= 0){
		//TURN RIGHT
		i2c_msg.data.push_back(2);
	}
	if(recent_drive_msg.left < 0 && recent_drive_msg.right < 0){
		//GO BACKWORDS
		i2c_msg.data.push_back(3);
	}
	/*
		After reading the Direction byte, Now it's reading the how fast the motor is going 
		by calculating (value (0-->10) * 255) the value its returned/uploaded on I2C Drive.msg from the Joy Node 
	*/
	char left = (char) (abs(recent_drive_msg.left*255.0));
	char right = (char) (abs(recent_drive_msg.right*255.0));
	
	i2c_msg.data.push_back( left );
	i2c_msg.data.push_back( right );
	
	// Return/Send the Message
	return i2c_msg;	
}

int main(int argc, char** argv){
	ros::init(argc, argv, "motor_node"); 
	ros::NodeHandle n;
	
	//Subscribe to motor value messages
	drive_sub = n.subscribe("drive_vals", 10, driveSubCallback);
	
	//Publish values  on I2C
	ros::Publisher i2c_pub = n.advertise<shared_files::WriteI2C>("write_i2c", 100);

	ros::Duration motor_update_rate(.25); 
	ros::Time curr_time = ros::Time::now();
	
	while(ros::ok()){
		/*  
			constantly check if we need to write new messages
			if we do, check if the message is recent
			convert the motor message to an I2C message if it is recent, and publish
			else, write an I2C message of 0's to stop the motors	
		*/		
	
		//Drive message
		curr_time = ros::Time::now();
		if(curr_time - recent_drive_pub_time > motor_update_rate){
			//it's time to update the motors
			//check if we've received a motor_msg recently
			if(curr_time - recent_drive_sub_time > motor_update_rate){
				//the last drive msg has expired
				//send a message to stop Arduino motors
				shared_files::WriteI2C i2c_msg = generate_stop_msg(4, 0);
				i2c_pub.publish(i2c_msg);
				recent_drive_pub_time = ros::Time::now();
			}
			else{
				//the last Drive.msg is recent enough to send
				shared_files::WriteI2C i2c_msg = generate_drive_msg();
				i2c_pub.publish(i2c_msg);
				recent_drive_pub_time = ros::Time::now();
			}
		}		
		ros::spinOnce();
	}
}
