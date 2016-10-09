boolean playing = true;
float circles;
int minHue = 0;
int maxHue = 42;

void setup() {
  size(550, 500);
  background(0);
  colorMode(HSB, 360, 1, 1, 1);
}

void draw() {
  circles=random(10, 100);
  noStroke();
  fill(random(minHue, maxHue), 1, 1, 0.40);
  ellipse(random(0, 550), random(0, 500), circles, circles);


  circles=random(10, 100);
  noStroke();
  fill(random(minHue, maxHue), 1, 1, 0.40);
  ellipse(random(0, 550), random(0, 500), circles, circles);

  rect(mouseX, mouseY, pmouseX, pmouseY);
}

void keyPressed() {
  /* if playing, change to false
   * other change to true (playing)
   */
  playing = !playing;

  if (playing) {
    loop();
  } else {
    noLoop();
  }

  if (key == '1') {
    minHue = 0;
    maxHue = 42;
  }
  if (key == '2') {
    minHue = 281;
    maxHue = 320;
  }
  if (key == '3') {
    minHue = 189;
    maxHue = 206;
  }
}