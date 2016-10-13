/* ArduinoMultiPotentiometerToSerial
 *  
 *  continuously reads a two potentiometer values
 *  then sends these value over the Serial line
 *  whenever either has changed
 *  
 *  Run the accompanying Processing sketch to read in these values
 *  over serial, and do something with them.
 *  
 *  1). Follow the https://www.arduino.cc/en/Tutorial/ReadAnalogVoltage tutorial
 *  and then you will have properly wired a potentiometer to Analog-0 on your Arduino.
 *  
 *  2) Wire a second potentiometer in a similar fashion, but connect to Analog-1
 */
int a0 = 0; // current value of potentiometer 0
int a1 = 0; // current value of potentiometer 1
float unitRange = 0;

// the setup function runs once when you press reset or power the board
void setup() {
  Serial.begin(9600);
}

// the loop function runs over and over again forever
void loop() {

  /* potentiometer 0,
   * only send values to Processing if the value has changed */
  if (analogRead(0) != a0) {
    a0 = analogRead(0);

    /* analogRead takes values 0-1023, https://www.arduino.cc/en/Reference/AnalogRead
     *  lets map this to 0-1 for our Processing sketch */
    unitRange = a0 / 1023.0;

    // Send the number as string with 2 decimal places
    // and the ID of this sensor
    // over the serial line, followed by a line-feed (enter)
    // something like:
    // 0, 0.34
    Serial.println("0," + String(unitRange, 2));
  }

  // potentiometer 1 
  if (analogRead(1) != a1) {
    a1 = analogRead(1);
    unitRange = a1 / 1023.0;
    Serial.println("1," + String(unitRange, 2));
  }

  /* we almost always want a delay when sending data over serial
     because the Arduino loop occurs much quicker than we want to send over the serial line */
  delay(100);
}
