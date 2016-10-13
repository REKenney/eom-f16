/* ProcessingReadArduinoMultiSensorDrawCircle
 *
 *  draws a circle of size varying in response to changing potentiometers
 *  the first potentiometer changes the circle size
 *  the second potentiometer changes the circle hue
 * 
 * 1) Setup your circuit and Arduino
 * see documentation in the Arduino Sketch
 *
 * 2) Run this sketch
 *
 */
import processing.serial.*; 

// variables for managing the Serial connection
Serial arduino;
int lf = 10;      // ASCII linefeed (enter), sent by Arduino Serial.println

float sensor0 = 0;
float sensor1 = 0;

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
  background(0, 0, 0, 0);
  colorMode(HSB, 360, 1, 1, 1);

  // Use the value of sensor0 to determine the circle size
  float ellipseDiameter = map(sensor0, 0, 1, 30, width*1.1);

  // Use the value of sensor1 to determine the circle hue
  float hue = map(sensor1, 0, 1, 0, 360);

  fill(hue, 1, 1);  
  strokeWeight(2);
  stroke(80);
  ellipse(width/2.0, height/2.0, ellipseDiameter, ellipseDiameter);
} 

/* https://processing.org/reference/libraries/serial/serialEvent_.html
 * Read in values over the Serial line
 * each value looks like 0, 0.33
 * or ID of the sensor, followed by value of the sensor
 * separate out the ID and value and save
 */
void serialEvent(Serial s) {
  String val = s.readString();
  String[] tok = splitTokens(val, ",");
  if (tok.length == 2) {
    int sensorId = int(tok[0]);
    float sensorValue = constrain(float(tok[1]), 0, 1);
    if (sensorId == 0) {
      sensor0 = sensorValue;
    }
    if (sensorId == 1) {
      sensor1 = sensorValue;
    }
  }
}