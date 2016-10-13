import processing.sound.*;
SoundFile file;

void setup() {
  size(640, 360);
  background(255);

  file = new SoundFile(this, "003_tink4.wav");
}      

void draw() {
  if (frameCount % 60 == 0) {
    // every second
    file.play();
  }
}