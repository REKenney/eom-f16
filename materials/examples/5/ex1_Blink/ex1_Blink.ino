/*
  see totorial: https://www.arduino.cc/en/Tutorial/Blink
  
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.

  long leg of the LED is the positive leg, called the anode

  Since most Arduinos have an on-board LED you can control. On the Uno and
  Leonardo, it is attached to digital pin 13. If you're unsure what
  pin the on-board LED is connected to on your Arduino model, check
  the documentation at http://www.arduino.cc. So, if you run this Sketch with 
  no external LED attached, you should still see the internal LED blink
  
  This example code is in the public domain.

  modified 8 May 2014
  by Scott Fitzgerald
 */


// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin 13 as an output.
  pinMode(13, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(13, HIGH);   // turn the LED on (HIGH is the voltage level)

  // *******
  // NOTE
  // change these values below, to see how it affects the blink rate
  // *******
  
  delay(1000);              // wait for a second
  digitalWrite(13, LOW);    // turn the LED off by making the voltage LOW
  delay(1000);              // wait for a second
}
