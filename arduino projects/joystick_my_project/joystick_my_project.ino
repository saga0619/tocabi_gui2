//need 2 analog pin and 1 digital pin per one joystick

#define right_joyX A0
#define right_joyY A1
#define right_joy_sw 20 //20 means D20

#define left_joyX A3
#define left_joyY A4
#define left_joy_sw 23


int right_xValue, right_yValue, right_joy_swValue;
int left_xValue, left_yValue, left_joy_swValue;


void setup() {
  pinMode(right_joy_sw, INPUT_PULLUP);
  pinMode(left_joy_sw, INPUT_PULLUP);
  Serial.begin(9600);
  
}
 
void loop() {
  // put your main code here, to run repeatedly:
  right_xValue = analogRead(right_joyX);
  right_yValue = analogRead(right_joyY);
  right_joy_swValue = digitalRead(right_joy_sw);

  left_xValue = analogRead(left_joyX);
  left_yValue = analogRead(left_joyY);
  left_joy_swValue = digitalRead(left_joy_sw);
 
  //print the values with to plot or view
  Serial.print(right_xValue);
  Serial.print("\t");
  Serial.print(right_yValue);
  Serial.print("\t");
  Serial.print(right_joy_swValue);
  Serial.print("\t");
  
  Serial.print(left_xValue);
  Serial.print("\t");
  Serial.print(left_yValue);
  Serial.print("\t");
  Serial.println(left_joy_swValue);
}
