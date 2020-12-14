// "ArduinoJson" library must be installed in Arduino IDE
//button pin define
#define button_pin0 0
#define button_pin1 1
#define button_pin2 2
#define button_pin3 3

//rotary encoder pin define
#define right_CLK 4
#define right_DT 5
#define right_rotary_SW 6
#define left_CLK 11
#define left_DT 12
#define left_rotary_SW 13

//joystick pin define
#define right_joyX A0
#define right_joyY A1
#define right_joy_sw 20 //20 means D20
#define left_joyX A3
#define left_joyY A4
#define left_joy_sw 23

//button pin variable definition
long last_debounce_time = 0;
long debounce_delay = 50;
bool published = true;
int total_reading;

//rotary encoder variable definition
int right_count = 0; 
int right_currentCLK;
int right_previousCLK;
int right_i = 0;
int left_count = 0; 
int left_currentCLK;
int left_previousCLK;
int left_i = 0;

//joystick variable definition
int right_xValue, right_yValue, right_joy_swValue;
int left_xValue, left_yValue, left_joy_swValue;


void setup() {
  pinMode(button_pin0, INPUT);
  pinMode(button_pin1, INPUT);
  pinMode(button_pin2, INPUT);
  pinMode(button_pin3, INPUT);
  digitalWrite(button_pin0, HIGH);
  digitalWrite(button_pin1, HIGH);
  digitalWrite(button_pin2, HIGH);
  digitalWrite(button_pin3, HIGH);
  
  pinMode (right_CLK,INPUT);
  pinMode (right_DT,INPUT);
  pinMode (right_rotary_SW, INPUT_PULLUP);
  pinMode (left_CLK,INPUT);
  pinMode (left_DT,INPUT);
  pinMode (left_rotary_SW, INPUT_PULLUP);

  pinMode(right_joy_sw, INPUT_PULLUP);
  pinMode(left_joy_sw, INPUT_PULLUP);

  right_previousCLK = digitalRead(right_CLK);
  left_previousCLK = digitalRead(left_CLK);
  Serial.begin(9600);
  
}
 
void loop() {

  //button value read
  int reading0 = ! digitalRead(button_pin0);
  int reading1 = ! digitalRead(button_pin1);
  int reading2 = ! digitalRead(button_pin2);
  int reading3 = ! digitalRead(button_pin3);
  total_reading = reading0 + 10*reading1 + 100*reading2 + 1000*reading3;

  //rotary encoder value read
  int right_T_count = digitalRead(right_rotary_SW);  
  int left_T_count = digitalRead(left_rotary_SW);  
  
  if (right_T_count == LOW) { right_count = 0 ; }   //when right_click
  if (left_T_count == LOW) { left_count = 0 ; }   //when left_click

  right_currentCLK = digitalRead(right_CLK);
  left_currentCLK = digitalRead(left_CLK);
  
  if (right_currentCLK != right_previousCLK){   //when rotary rolls left
    if (digitalRead(right_DT) != right_currentCLK) { 
      if(!right_i) right_i ++;
      else {
        right_count --;
        right_i = 0;
      }
    }
    else {                         //when rotary rolls right
      if(!right_i) right_i ++;
      else {
        right_count ++;
        right_i = 0;
      }
    }
    
  } 
  if (left_currentCLK != left_previousCLK){   //when rotary rolls left
    if (digitalRead(left_DT) != left_currentCLK) { 
      if(!left_i) left_i ++;
      else {
        left_count --;
        left_i = 0;
      }
    }
    else {                         //when rotary rolls right
      if(!left_i) left_i ++;
      else {
        left_count ++;
        left_i = 0;
      }
    }
    
  }
  right_previousCLK = right_currentCLK; 
  left_previousCLK = left_currentCLK; 

  //joystick value read
  right_xValue = analogRead(right_joyX);
  right_yValue = analogRead(right_joyY);
  right_joy_swValue = digitalRead(right_joy_sw);
  left_xValue = analogRead(left_joyX);
  left_yValue = analogRead(left_joyY);
  left_joy_swValue = digitalRead(left_joy_sw);
 
  
  //button print
  Serial.print(total_reading);
  Serial.print("\t");
  
  //rotary encoder print 
  Serial.print(" left_count = ");
  Serial.print(left_count);
  Serial.print("\t");
  Serial.print(" right_count = ");
  Serial.print(right_count);
  Serial.print("\t");
        
  //joystick print
  Serial.print(right_xValue);
  Serial.print("\t");
  Serial.print(right_yValue);
  Serial.print("\t");
  Serial.print(right_joy_swValue);
  Serial.print("\t");
  
  Serial.print("\t");
  
  Serial.print(left_xValue);
  Serial.print("\t");
  Serial.print(left_yValue);
  Serial.print("\t");
  Serial.println(left_joy_swValue);
}
