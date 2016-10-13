/* example adapted from sketch by Brian Lucid */

import ddf.minim.*;
import ddf.minim.signals.*;
 
Minim minim;
AudioPlayer mysound;

void setup() {
  size(200, 200);
  minim = new Minim(this);
  mysound = minim.loadFile("looperman-l-0348349-0064279-harveybluntman-unique-dub-synth.wav"); // load the audio file
  mysound.loop();
  rectMode(CORNERS);
}
 
void draw() {
  background(0);
  fill(149,8,8);
  
  // draw the current level of the left and right sample buffers
  // level() returns a value between 0 and 1, so we scale it up
  rect(0, height, width/2, height - mysound.left.level()*1000);
  rect(width/2, height, width, height - mysound.right.level()*1000);
  
  // note that every AudioPlayer has three channels.. left, right and mix. 
}
