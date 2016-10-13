/* ArduinoPotentiometerToSerial
 *  
 *  continuously reads a potentiometer value
 *  then sends this value over the Serial line
 *  whenever it has changed
 *  
 *  Run the accompanying Processing sketch to read in this value
 *  over serial, and do something with it.
 *  
 *  1). Follow the https://www.arduino.cc/en/Tutorial/ReadAnalogVoltage tutorial
 *  and then you will have properly wired a potentiometer to Analog-0 on your Arduino.
 *  You should run thier example Sketch to make sure you haved wired your potentiometer properly
 *  then load this sketch onto your Arduino 
 *  
 *  Keep your Arduino plugged into your computer, so that you can use the USB-Serial
 *  line for communication
 */
int a0 = 0; // current value of potentiometer

// the setup function runs once when you press reset or power the board
void setup() {
  Serial.begin(9600);
}

// the loop function runs over and over again forever
void loop() {

  /* potentiometer,
   * only send values to Processing if the value has changed */
  if (analogRead(0) != a0) {
    a0 = analogRead(0);

    /* analogRead takes values 0-1023, https://www.arduino.cc/en/Reference/AnalogRead
     *  lets map this to 0-1 for our Processing sketch */
    float unitRange = a0 / 1023.0;

    // Send the number as string with 2 decimal places
    // over the serial line, followed by a line-feed (enter)
    Serial.println(unitRange, 2); 
  }

  /* we almost always want a delay when sending data over serial
     because the Arduino loop occurs much quicker than we want to send over the serial line */
  delay(100);
}
