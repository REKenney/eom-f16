/* example adapted from sketch by Brian Lucid */

import ddf.minim.*;
import ddf.minim.signals.*;
Minim minim;
AudioPlayer mysound;

void setup(){
  size(200, 200);
  minim = new Minim(this); // create a new Minim object
  mysound = minim.loadFile("looperman-l-0348349-0064279-harveybluntman-unique-dub-synth.wav"); // load the audio file
  mysound.loop(); // start playing
}

void draw() {
  // we need a draw() method here, even if empty
  // to hear our audio files
}