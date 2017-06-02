#!/bin/bash
source ~/Desktop/ROS_WS/devel/setup.bash
export ROS_IP=192.168.0.100
export ROS_MASTER_URI="http://192.168.0.100:11311"
export | grep ROS
roslaunch ~/Desktop/ROS_WS/src/QuadCopter/startDefault.launch
