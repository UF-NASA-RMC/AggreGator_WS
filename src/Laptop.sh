#!/bin/bash
source ~/AGGREGATOR_WS/devel/setup.bash
export ROS_IP=192.168.0.100
export ROS_MASTER_URI="http://192.168.0.104:11311"
export | grep ROS
roslaunch ~/AGGREGATOR_WS/src/startRC.launch
