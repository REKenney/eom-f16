/* ArduinoButtonToSerial

    continuously reads the button state
    then sends this value over the Serial line

    Run the accompanying Processing sketch to read in this value
    over serial, and do something with it.

    1). Follow the https://www.arduino.cc/en/Tutorial/DigitalReadSerial tutorial
    and then you will have properly wired a button to Digital-2 on your Arduino.
    you need to avoid using Digital-0/1 because these are being used by the Serial connection
*/

// digital pin 2 has a pushbutton attached to it. Give it a name:
int pushButton = 2;

// the setup function runs once when you press reset or power the board
void setup() {
  Serial.begin(9600);
  
  // make the pushbutton's pin an input:
  pinMode(pushButton, INPUT);
}

// the loop function runs over and over again forever
void loop() {
  byte buttonState = digitalRead(pushButton);
  Serial.write(buttonState); // send the button state over the serial line

  /* we almost always want a delay when sending data over serial
     because the Arduino loop occurs much quicker than we want to send over the serial line */
  delay(100);
}
