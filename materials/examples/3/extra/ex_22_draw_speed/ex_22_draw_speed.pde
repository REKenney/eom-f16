void setup() {
  size(400, 400);
  background(#4B3749);
  noStroke();
  fill(182, 220, 250, 80);
}

void draw() {
  /* if we have a great distance between the previous mouse position
   * and the current mouse position that means we are moving
   * the mouse more quickly */
  float speed = dist(pmouseX, pmouseY, mouseX, mouseY);

  ellipse(mouseX, mouseY, speed, speed);
}

void mousePressed() {
  background(#4B3749);
}

