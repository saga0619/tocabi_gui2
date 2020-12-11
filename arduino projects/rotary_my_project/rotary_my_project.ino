//need 3 digital pin per one rotary encoder

#define right_CLK 4
#define right_DT 5
#define right_rotary_SW 6

#define left_CLK 11
#define left_DT 12
#define left_rotary_SW 13

//#include <ros.h>
//#include <std_msgs/Int32.h>
//
//
//ros::NodeHandle nh;
//
//std_msgs::Int32 rotary_msg;
//ros::Publisher pub_button("arduino_rotary", &rotary_msg);

int right_count = 0; 
int right_currentCLK;
int right_previousCLK;

int right_i = 0;

int left_count = 0; 
int left_currentCLK;
int left_previousCLK;

int left_i = 0;

void setup() {   
  pinMode (right_CLK,INPUT);
  pinMode (right_DT,INPUT);
  pinMode (right_rotary_SW, INPUT_PULLUP);
  pinMode (left_CLK,INPUT);
  pinMode (left_DT,INPUT);
  pinMode (left_rotary_SW, INPUT_PULLUP);
  Serial.begin (9600);
  right_previousCLK = digitalRead(right_CLK);
  left_previousCLK = digitalRead(left_CLK);
} 

void loop() {    
  int right_T_count = digitalRead(right_rotary_SW);  
  int left_T_count = digitalRead(left_rotary_SW);  
  
  if (right_T_count == LOW) { right_count = 0 ; }   //when right_click
  if (left_T_count == LOW) { left_count = 0 ; }   //when right_click

  right_currentCLK = digitalRead(right_CLK);
  left_currentCLK = digitalRead(left_CLK);
  
  if (right_currentCLK != right_previousCLK){   //when rotary rolls left
    if (digitalRead(right_DT) != right_currentCLK) { 
      if(!right_i) right_i ++;
      else {
        right_count --;
        right_i = 0;
        Serial.print(" left_count = ");
        Serial.print(left_count);
        Serial.print("\t");
        Serial.print(" right_count = ");
        Serial.println(right_count);
      }
    }
    else {                         //when rotary rolls right
      if(!right_i) right_i ++;
      else {
        right_count ++;
        right_i = 0;
        Serial.print(" left_count = ");
        Serial.print(left_count);
        Serial.print("\t");
        Serial.print(" right_count = ");
        Serial.println(right_count);
      }
    }
    
  } 
  if (left_currentCLK != left_previousCLK){   //when rotary rolls left
    if (digitalRead(left_DT) != left_currentCLK) { 
      if(!left_i) left_i ++;
      else {
        left_count --;
        left_i = 0;
        Serial.print(" left_count = ");
        Serial.print(left_count);
        Serial.print("\t");
        Serial.print(" right_count = ");
        Serial.println(right_count);
      }
    }
    else {                         //when rotary rolls right
      if(!left_i) left_i ++;
      else {
        left_count ++;
        left_i = 0;
        Serial.print(" left_count = ");
        Serial.print(left_count);
        Serial.print("\t");
        Serial.print(" right_count = ");
        Serial.println(right_count);
      }
    }
    
  }
  right_previousCLK = right_currentCLK; 
  left_previousCLK = left_currentCLK; 

}
