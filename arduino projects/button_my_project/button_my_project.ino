//need 1 digital pin per one button

#define button_pin0 0
#define button_pin1 1
#define button_pin2 2
#define button_pin3 3;


#include <ros.h>
#include <std_msgs/Int32.h>

ros::NodeHandle nh;

std_msgs::Int32 pushed_msg;
ros::Publisher pub_button("arduino_pushbtn", &pushed_msg);

int total_last_reading, total_reading;
long last_debounce_time = 0;
long debounce_delay = 50;
bool published = true;

void setup() {
  nh.initNode();
  nh.advertise(pub_button);
  
  //initialize an LED output pin 
  //and a input pin for our push button

  pinMode(button_pin0, INPUT);
  pinMode(button_pin1, INPUT);
  pinMode(button_pin2, INPUT);
  pinMode(button_pin3, INPUT);
  
  //Enable the pullup resistor on the button
  digitalWrite(button_pin0, HIGH);
  digitalWrite(button_pin1, HIGH);
  digitalWrite(button_pin2, HIGH);
  digitalWrite(button_pin3, HIGH);
  
  //The button is a normally button
  int last_reading0 = ! digitalRead(button_pin0);
  int last_reading1 = ! digitalRead(button_pin1);
  int last_reading2 = ! digitalRead(button_pin2);
  int last_reading3 = ! digitalRead(button_pin3);

  total_last_reading = last_reading0 + 10*last_reading1 + 100*last_reading2 + 1000*last_reading3;
 
}

void loop()
{
  
  int reading0 = ! digitalRead(button_pin0);
  int reading1 = ! digitalRead(button_pin1);
  int reading2 = ! digitalRead(button_pin2);
  int reading3 = ! digitalRead(button_pin3);

  total_reading = reading0 + 10*reading1 + 100*reading2 + 1000*reading3;
  
  if (total_last_reading!= total_reading){
      last_debounce_time = millis();
      published = false;
  }
  
  //if the button value has not changed for the debounce delay, we know its stable
  if ( !published && (millis() - last_debounce_time)  > debounce_delay) {
    pushed_msg.data = total_reading;
    pub_button.publish(&pushed_msg);      //PUSBLISH CODE
    published = true;
  }

  total_last_reading = total_reading;
  
  nh.spinOnce();
}
