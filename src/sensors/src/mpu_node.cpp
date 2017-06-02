/*
   This Node is to handle the Data coming from MPU Sensor
*/

#include <iostream>
#include "ros/ros.h"
#include "shared_files/ReadI2C.h"
#include "shared_files/WriteI2C.h"
#include "shared_files/Angle.h"

#define MPU_ADDR 5 // THe Arduino Address on I2C Bus

//ros::Publisher write_i2c;
ros::ServiceClient read_i2c;
ros::Publisher angle;

shared_files::Angle last_angle;

int16_t x_gyro = 0;
int16_t y_gyro = 0;
int16_t z_gyro = 0;

void mpuCallback(const ros::TimerEvent&){
/*
	//tell the mpu you want to get reading "Degrees/sec."
	shared_files::WriteI2C mpu_msg;
		mpu_msg.addr = MPU_ADDR;
		write_i2c.publish(mpu_msg);
*/
	//now read 3 Degrees as following: x, y, z
    	shared_files::ReadI2C arduino_mpu_srv;
		arduino_mpu_srv.request.addr = MPU_ADDR;
		arduino_mpu_srv.request.size = 3;

    if(read_i2c.call(arduino_mpu_srv)){
		x_gyro = (arduino_mpu_srv.response.data[0] << 24);
		y_gyro = x_gyro | (arduino_mpu_srv.response.data[1] << 16);
		z_gyro = x_gyro | (arduino_mpu_srv.response.data[2] << 8);
	/*
		x_acc = (arduino_mpu_srv.response.data[0] << 8) | arduino_mpu_srv.response.data[1];
		y_acc = (arduino_mpu_srv.response.data[2] << 8) | arduino_mpu_srv.response.data[3];
		z_acc = (arduino_mpu_srv.response.data[4] << 8) | arduino_mpu_srv.response.data[5];
		temperature = (arduino_mpu_srv.response.data[6] << 8) | arduino_mpu_srv.response.data[7];
	*/

	//	ROS_INFO("GYRO: %d, %d, %d", x_gyro, y_gyro, z_gyro);
	//	ROS_INFO("ACCELERATION: %d, %d, %d", x_acc, y_acc, z_acc);
	//	ROS_INFO("Temperature: %d", temperature);
	
	} 
	else {
       		 ROS_INFO("Failed to call read_i2c Arduino service!");
    }
}

void rosoutCallback(const ros::TimerEvent&){

	//ROS_INFO("ACCELERATION: %d, %d, %d", x_acc, y_acc, z_acc);   
   	 ROS_INFO("Angle/sec. in Degrees: %d, %d, %d", x_gyro, y_gyro, z_gyro);
	
}

int main(int argc, char** argv){
	ros::init(argc, argv, "mpu_node"); 
	ros::NodeHandle n;
		
     // write_i2c = n.advertise<shared_files::WriteI2C>("write_i2c", 4);
	read_i2c = n.serviceClient<shared_files::ReadI2C>("read_i2c");
	angle = n.advertise<shared_files::Angle>("angle", 4);	// The Arduino Address that Controlls the Motors

	ros::spinOnce();
	
     // ros::Duration(1).sleep();

    //Read MPU every tenth of a second
    ros::Timer mpu_timer = n.createTimer(ros::Duration(0.01), mpuCallback);

    ros::Timer ros_out_timer = n.createTimer(ros::Duration(.25), rosoutCallback);

	while(ros::ok()){

	     ros::spinOnce();
	}
}
