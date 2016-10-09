boolean playing = true;
float circles;

void setup() {
  size(550, 500);
  background(0);
}

void draw() {
  circles=random(10, 100);
  noStroke();
  fill(255, random(0, 180), 0, 100);
  ellipse(random(0, 550), random(0, 500), circles, circles);


  circles=random(10, 100);
  noStroke();
  fill(255, random(0, 180), 0, 100);
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
}