#include <cstdlib>
#include "ros/ros.h"
#include <sensor_msgs/Joy.h>
#include "shared_files/Drive.h"
#include "shared_files/Bucket.h"
#include "shared_files/Ladder.h"
#include <std_msgs/builtin_int16.h>
#include "ros/time.h"
#include "ros/duration.h"
#include <string.h>
#include <queue>

/*
You Must Declare your function(s) Prototype Here.
*/
void StopEverything();
void StopMiningMech();
void startMining();
ros::Time start, stage;
ros::Duration oneSec(1);
ros::Duration twoSec(2);
ros::Duration threeSec(3);
// ---------------------------------------------
//Buttons on the Xbox Controller
enum XboxButtons
{
	A,	//0
	B,	//1
	X,	//2
	Y,	//3
	LB,	//4
	RB,	//5
	BACK,	//6
	START,	//7
	POWER,	//8
	LEFT_STICK,//9
	RIGHT_STICK,//10

	NUM_BTNS//11
};

/*
* LR = left right
* UD = up down
* Left = left stick
* Right = right stick
* RT = right trigger
* LT = left trigger
*/
enum XboxAxis
{
	LR_LEFT,	//0
	UD_LEFT,	//1
	LT,			//2
	LR_RIGHT,	//3
	UD_RIGHT,	//4
	RT,			//5
	LR_DPAD,	//6
	UD_DPAD		//7
};


/*
 * Global Variables for xbox_controller
 * NOTE: variables for bucket_motor and linear_actuator have been removed; use them if more motors are added
 */
double left_motors(0.0), right_motors(0.0);
double bucket_dump(0.0);
double ladder_lift(1.0), ladder_conv(1.0);

int ladder_lift_dir = 1;
int ladder_conv_dir = 1;

bool enable = false; //for all motors, not just wheels
bool mining_sys_enable = false; // For Mining System Only!
double wheel_gear = 0.1;
double ladder_gear = 0.1;
double bucket_gear = 0.1;

//Keep track of button presses (to find button releases)
bool btn_pressed[NUM_BTNS] = { false };
bool btn_released[NUM_BTNS] = { false };

//Timing variables
ros::Time last_time, current_time;
ros::Duration send_time(0.1);       //time in seconds between sends (send ten messages a second)

//Ros publishers and subscribers
ros::Publisher drive_pub;
ros::Publisher bucket_pub;
ros::Publisher ladder_pub;

/*
 * Int for mapping
 * 1 is linear, 2 is quadratic, 3 cubic (anything else defaults to linear)
 */
int32_t mapping;

/*
 * Write the motor msg out
 * Rights the current command out
 * IN: none (uses global variables "left_motors" and "right_motors")
 * Out: WheelMotor to wheel_motor_rc topic
 */
void WriteMotorValue()
{
    	double left = 0.3;
    	double right = 0.3;
	double dump = 0.5;
	double ladd_lift = 0.3;
	double conv = 0.3;
    	current_time = ros::Time::now();
    	if(current_time - last_time > send_time){

		if(enable){ //if overall motor enable is true
			//Format data
			shared_files::Drive drive_msg;
			shared_files::Bucket bucket_msg;
			shared_files::Ladder ladder_msg;
			if(enable){
			//Bounds: [-1,1] * wheel_gear = [-wheel_gear, wheel_gear]
				left = left_motors * wheel_gear;       //Scale to gear
				right = right_motors * wheel_gear;     //Scale to gear
				dump = bucket_dump * bucket_gear;
				ladd_lift = ladder_lift;
				conv = ladder_conv;
				//triggers are scaled from -1 released to 1 pressed
				//convert to 0 released and 1 pressed
				if(ladd_lift == 0.0){
				/*
					when the joy node first launches
					it reads '0.0' as trigger which is half-way pressed
					check for 0.0, and if you see it, change it to 1.0 (not pressed)
				*/
					ladd_lift = 1.0;
				}
				if(conv == 0.0){
					conv = 1.0;
				}
				//now scale from 0 to 1
				ladd_lift = ((-1.0*ladd_lift) + 1.0)/2.0;
				conv = ((-1.0*conv) + 1.0)/2.0;

				//now scale them with the gear as normal

				ladd_lift = ladd_lift*ladder_lift_dir*ladder_gear;
			//	ladd_lift *= ladder_gear;
				conv = conv*ladder_conv_dir*ladder_gear;
			//	conv *= ladder_gear;

			} else {
				left = 0.0;
				right = 0.0;
				dump = 0.0;
				ladd_lift = 0.0;
				conv = 0.0;
			}

			//Write to all motors at the same time
			//Create messages with all motor values
			drive_msg.left = left;
			drive_msg.right = right;
			bucket_msg.dump = dump;
			ladder_msg.lift = ladd_lift;
			ladder_msg.conv = conv;

			//Send msgs right away
			drive_pub.publish(drive_msg);
			bucket_pub.publish(bucket_msg);
			ladder_pub.publish(ladder_msg);

			//mark the time the message was sent
			last_time = ros::Time::now();

		}//end if-enable
     }//end-if
}

/* XboxCallback - executed each time a message is recieved from /joy topic
	INPUT: joy message (list of axis values as floats with bounds [-1, 1]
	and buttons as ints with 0 (not pressed) or 1 (pressed)
	OUTPUT: None, but global variables left_motor and right_motor are set
	left_motor and right_motor are used in WriteMotorValues()
*/

void XboxCallback(const sensor_msgs::Joy::ConstPtr& joy)
{
	//Check for button releases
	for (int iii = 0; iii < NUM_BTNS; ++iii)
	{
		if (btn_pressed[iii] & !joy->buttons[iii])
			btn_released[iii] = true;
		else
			btn_released[iii] = false;

		btn_pressed[iii] = joy->buttons[iii];
	}

	if (btn_released[LB])
	{
		ladder_lift_dir *= -1 ;
		if(ladder_lift_dir == 1){
			ROS_INFO("Ladder system set to raise");
		}else{
			ROS_INFO("Ladder system set to lower");
		}
	}

	if (btn_released[RB])
	{
		ladder_conv_dir *= -1;
		if(ladder_conv_dir == 1){
			ROS_INFO("Ladder conveyor set in positive direction");
		}else{
			ROS_INFO("Ladder conveyor set in negative direction");
		}
    	}

	//OVERALL motor enable toggle
	if (btn_released[START])
	{
		enable = !enable;
		//If we disable input immediatly send a stop msg
		if (!enable)
		{
			StopEverything();
			ROS_INFO("Motors disabled");
		}
		else
		{
			ROS_INFO("Motors enabled");
		}
	}

	if(btn_released[BACK])
	{
		mining_sys_enable = !mining_sys_enable;
		//Stop imediatly if stop
		if(!mining_sys_enable)
		{
			StopMiningMech();
			ROS_INFO("Mining system disabled");
		}
		else
		{
			ROS_INFO("Mining system enabled...START Mining");
//			startMining();
		}
	}

	//wheel_gear up
	if (btn_released[B])
	{
		wheel_gear += 0.05f;
		if (wheel_gear >= 1.0f)
		{
			wheel_gear = 1.0f;
			ROS_INFO("Speed not limited (100%% of max)");
		}
		else
			ROS_INFO("Speed limited to %.2f%% of max", wheel_gear * 100.0f);
	}

	//wheel_gear down
	if (btn_released[A])
	{
		wheel_gear -= 0.05f;
		if (wheel_gear <= 0.1f)
		{
			wheel_gear = 0.1f;
			ROS_INFO("Speed limited to minimum 10%% of max");
		}
		else
			ROS_INFO("Speed limited to %.2f%% of max", wheel_gear * 100.0f);
	}

	// Mining Gear
	// lower mining speed
	if(btn_released[Y])
	{
		ladder_gear += 0.05f;
		bucket_gear += 0.05f;
		if (ladder_gear >= 1.0f)
		{
			ladder_gear = 1.0f;
			bucket_gear = 1.0f;
			ROS_INFO("Mining/lifting speed maximum (100%% of max)");
		}
		else
			ROS_INFO("Mining/lifting speed limited to %.2f%% of max", ladder_gear );
	}
	// increase mining speed
	if (btn_released[X])
	{
		ladder_gear -= 0.05f;
		bucket_gear -= 0.05f;
		if (ladder_gear <= 0.1f)
		{
			ladder_gear = 0.1f;
			bucket_gear = 0.1f;
			ROS_INFO("Mining/lifting speed limited to minimum 10%% of max");
		}
		else
			ROS_INFO("Mining/lifting speed limited to %.2f%% of max", ladder_gear );
	}

//Set motors to current value
    left_motors = joy->axes[UD_LEFT];

//    right_motors = joy->axes[UD_DPAD];
      right_motors = joy->axes[UD_RIGHT];

//    bucket_lift = -1.0*(joy->axes[LR_DPAD]);

    bucket_dump = -1.0*(joy->axes[LR_DPAD]);
/*
if(bucket_dump > 0.1){
    ROS_INFO("Hopper Is Dumping! _-_-_-_");
}
else if(bucket_dump < 0.1){
    ROS_INFO("Hopper Is Lowering");
}
*/
    ladder_lift = joy->axes[LT];	// Lift/Lower the Ladder
    ladder_conv = joy->axes[RT];	// Mine

//    if(btn_released[BACK])
//   	ROS_INFO("Triger values B:L \t %.2f : %.2f", bucket_motor, linear_actuator);
 }

//StopEverything
//Publishes all zero messages to all motors
void StopEverything()
{
	shared_files::Drive drive_msg;
	drive_msg.left = 0;
	drive_msg.right = 0;
	drive_pub.publish(drive_msg);

	shared_files::Bucket bucket_msg;
	bucket_msg.dump = 0.0;
	bucket_pub.publish(bucket_msg);

	shared_files::Ladder ladder_msg;
	ladder_msg.lift = 0.0;
	ladder_msg.conv = 0.0;
	ladder_pub.publish(ladder_msg);
}
void startMining(){

shared_files::Ladder ladder_msg;
shared_files::Drive drive_msg;

start = ros::Time::now();
while(ros::Time::now() - start < threeSec){

	ladder_msg.lift = -0.7;
	ladder_msg.conv = 0;
	ladder_pub.publish(ladder_msg);
}
stage = ros::Time::now();
while(ros::Time::now() - stage < twoSec){

	ladder_msg.lift = 0;
	ladder_msg.conv = 0.5;
	ladder_pub.publish(ladder_msg);
}
stage = ros::Time::now();
while(ros::Time::now() - stage < oneSec){

	drive_msg.left = 125;
	drive_msg.right = -125;
	drive_pub.publish(drive_msg);
}

}
// STOP Mining/lifting System
void StopMiningMech()
{
	shared_files::Bucket bucket_msg;
	bucket_msg.dump = 0.0;
	bucket_pub.publish(bucket_msg);

	shared_files::Ladder ladder_msg;
	ladder_msg.lift = 0.0;
	ladder_msg.conv = 0.0;
	ladder_pub.publish(ladder_msg);
}
int main(int argc, char** argv)
{
    /*
     * Initilization
     */

    //Initilize the xbox_controller_node 
    //(renamed from remote_control_node for clarity; it should match the filename -Joey)
    ros::init(argc, argv, "xbox_controller_node");

    //Node handler this is how you work with ROS
    ros::NodeHandle n;

    //Get the parameters
    //Send frequency
    send_time.fromSec(0.1);

    //mapping
    n.param<int32_t>("/remote_control/xbox_controller/mapping", mapping, 1);
    if(mapping < 1 || mapping > 3)
        mapping = 1;

/*
    n.param<double>("/remote_control/bucket_gear", bucket_gear, .12f);
    if(bucket_gear > 1.0f || bucket_gear < 0.0f)
    {
	bucket_gear = 1.0f;
	ROS_ERROR("You set the bucket gear to %.2f%%, which is outside of bounds.  Setting to 100%%", bucket_gear * 100);
    }
    else if(bucket_gear < 0.02f)
    {
	bucket_gear = 0.02f;
	ROS_ERROR("You set the bucket gear to %.2f%%, which is outside of bounds.  Setting to 2%%", bucket_gear * 100);
    }
    else
    {
	ROS_INFO("Bucket gear = %.2f%%", bucket_gear);
    }
*/
    //parameter for simulating delay


    //Set up subscriber, listens to joy topic, buffer only 10 messages, use XboxCallback
    ros::Subscriber joy_sub = n.subscribe<sensor_msgs::Joy>("joy", 10, XboxCallback);


    //Set up publisher on motor_rc, buffer up to 10 msgs
    drive_pub = n.advertise<shared_files::Drive>("drive_vals", 10);
    bucket_pub = n.advertise<shared_files::Bucket>("bucket_vals", 10);
    ladder_pub = n.advertise<shared_files::Ladder>("ladder_vals", 10);

    //Initilize time
    last_time = ros::Time::now();
    current_time = last_time;

    std::string str = "CLK Wise";
    std::string strII = "UP";
    if(ladder_conv_dir == -1) str = "CCLK Wise";
    if(ladder_lift_dir == -1) strII ="Down";
    ROS_INFO("--------------------------------------");
    ROS_INFO_STREAM("Default Mining Direction: " << str);
    ROS_INFO_STREAM("Default Ladder Lifting Direction: " << strII);
    ROS_INFO("--------------------------------------");
    //Wait for publishers to inti then turn everything off
    //while((bucket_motor_pub.getNumSubscribers() == 0 || linear_actuator_pub.getNumSubscribers() == 0 || wheel_motor_pub.getNumSubscribers() == 0) && ros::ok());

    //To make sure the motors start at 0
    StopEverything();

    /*
     * Main loop
     */
    while (ros::ok())
    {
        WriteMotorValue();
        ros::spinOnce();
    }

   return 0;
}
