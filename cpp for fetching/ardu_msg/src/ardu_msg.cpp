#include <ros/ros.h>
#include <std_msgs/String.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdint.h>
#include <fcntl.h>
#include <termios.h>
#include <errno.h>
#include <sys/ioctl.h>
#include <string>
#include <iostream>

#include "ArduinoJson.h"



int fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);


int serialport_read_until(int fd, char* buf, char until)
{
    char b[1];
    int i=0;
    do { 
        int n = read(fd, b, 1);  // read a char at a time
        if( n==-1) return -1;    // couldn't read
        if( n==0 ) {
            usleep( 10 * 1000 ); // wait 10 msec try again
            continue;
        }
        buf[i] = b[0]; i++;
    } while( b[0] != until );

    buf[i] = 0;  // null terminate the string
    return 0;
}


int main(int argc, char **argv){
	ros::init(argc, argv, "ardu_msg_node");
	
	ros::NodeHandle nh;

	ros::Publisher ros_pub = nh.advertise<std_msgs::String>("/ardu_msg", 1);

	ros::Rate rate(150);

	std_msgs::String msg;
	//std::stringstream ss;
	
  	/* wait for the Arduino to reboot */
  	usleep(350);
  	struct termios toptions;
 	/* get current serial port settings */
  	tcgetattr(fd, &toptions);
 	/* set 9600 baud both ways */
 	cfsetispeed(&toptions, B9600);
 	cfsetospeed(&toptions, B9600);
 	/* 8 bits, no parity, no stop bits */
  	toptions.c_cflag &= ~PARENB;
  	toptions.c_cflag &= ~CSTOPB;
  	toptions.c_cflag &= ~CSIZE;
  	toptions.c_cflag |= CS8;
 	/* Canonical mode */
  	toptions.c_lflag |= ICANON;
  	/* commit the serial port settings */
 	tcsetattr(fd, TCSANOW, &toptions);
	


	while(ros::ok()){
		char buf[200];  //400 bytes
		serialport_read_until(fd, buf, '}');
		msg.data = buf;
		//printf("%s ", msg);
		//msg.data = read(fd, &response,1);
		ros_pub.publish(msg);	//string publishing
		rate.sleep();
	}


	return 0;
}
		


// int main(void){

//     setupArduino();

//     while(1){
//         DynamicJsonDocument doc(2048);

//         char buf[200];  //400 bytes
// 	serialport_read_until(fd, buf, '}');
//         deserializeJson(doc, buf);  //Json deserialize
//         JsonObject obj = doc.as<JsonObject>();
//         const char* controller = doc["controller"];
    
//         int button = doc["button"];
//         int left_count = doc["left_count"];
//         int right_count = doc["right_count"];
//         int right_xValue = doc["right_xValue"];
//         int right_yValue = doc["right_yValue"];
//         int right_joy_swValue = doc["right_joy_swValue"];
//         int left_xValue = doc["left_xValue"];
//         int left_yValue = doc["left_yValue"];
//         int left_joy_swValue = doc["left_joy_swValue"];
        
//         // printf("%d ", button);
//         // printf("%d ", left_count);
//         // printf("%d ", right_count);
//         // printf("%d ", right_xValue);
//         // printf("%d ", right_yValue);
//         // printf("%d ", right_joy_swValue);
//         // printf("%d ", left_xValue);
//         // printf("%d ", left_yValue);
//         // printf("%d \n", left_joy_swValue);
        



//     }
//     return 0;
    
// } 
