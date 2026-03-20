/*
   rosserial Subscriber Example
   Blinks an LED on callback
*/

#include <ros.h>
#include <std_msgs/Bool.h>
#include <Servo.h>

Servo myservo;
ros::NodeHandle nh;
bool tog = false;

void messageCb(const std_msgs::Bool& toggle_msg) {
  if (toggle_msg.data == true){
    tog = !tog;
  }
  
  if (tog == false){
    myservo.write(110);
    digitalWrite(LED_BUILTIN, LOW); // blink the led
  } else if (tog == true) {
    myservo.write(170);
    digitalWrite(LED_BUILTIN, HIGH);
  }
}

ros::Subscriber<std_msgs::Bool> sub("chatter", &messageCb);

void setup()
{
  myservo.attach(9);
  //pinMode(LED_BUILTIN, OUTPUT);
  nh.initNode();
  nh.subscribe(sub);
}

void loop()
{
  nh.spinOnce();
  delay(500);
}
