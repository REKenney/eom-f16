/* ProcessingReadArduinoDrawCircle
 *
 *  draws a circle of size varying in response to a changing
 *  potentiometer
 * 
 * 1) Setup your circuit and Arduino
 * see documentation in the Arduino Sketch
 * make sure to keep you Arduino plugged into your computer
 * since you are using the USB-Serial line to communicate with the Sketch
 *
 * 2) Run this sketch
 *
 * TIP: make sure to stop this Sketch if you need to update your Arduino
 * since this sketch is using the Serial line needed for Arduino uploading
 *
 */
import processing.serial.*; 

// variables for managing the Serial connection
Serial arduino;
int lf = 10;      // ASCII linefeed (enter), sent by Arduino Serial.println

float sensorValue = 0;

void setup() {
  size(700, 700);
  // List all the available serial ports:
  printArray(Serial.list());

  // Open the port you are using at the rate you want:
  // update [0] below to match the actual port listed in the console
  // should be /dev/tty.usbmodem1411 on a Mac
  arduino = new Serial(this, Serial.list()[0], 9600);
  
  // only fire the serialEvent once we have received the linefeed
  // IE wait until the Arduino has sent us a complete line
  arduino.bufferUntil(lf); 
  
}

void draw() {
  background(255);
  
  float ellipseDiameter = map(sensorValue, 0, 1, 30, width*1.1);
  fill(0);
  strokeWeight(2);
  stroke(80);
  ellipse(width/2.0, height/2.0, ellipseDiameter, ellipseDiameter);
} 

// https://processing.org/reference/libraries/serial/serialEvent_.html
void serialEvent(Serial s) {
  String val = s.readString();
  
  /* convert our value to a float, then constrain
   * to the range 0-1, it is always good practice to use
   * constrain() in case noise on the Serial line has damaged our data */
  sensorValue = constrain(float(val), 0, 1);
  
  println("Received value from Arduino: ", sensorValue);
}