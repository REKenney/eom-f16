void setup() {
  size(500, 500);
  background(255);
}

void draw() {  
  /* always draw the lines */
  stroke(232, 23, 187);
  line(mouseX, mouseY, pmouseX, pmouseY);

  /* draw an ellipse when the mouse is not moving,
   * IE when the previous mouse position equals the current
   * mouse position that means we haven't moved */
  if (pmouseX == mouseX && pmouseY == mouseY) {
    noStroke();
    fill(232, 23, 187, 100);
    ellipse(mouseX, mouseY, 10, 10);
  }
}

