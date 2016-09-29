int mode = 1; // we start with mode 1

void setup() {
  size(500, 500);
  background(20);
}

void draw() {
  if (mode == 1) {
    // mode is 1, draw the blue ellipse
    fill(0, 0, 255);
    ellipse(mouseX, mouseY, 5, 4);
  }
  if (mode == 2) {
    // mode is 2, draw green rectangle
    fill(0, 255, 0);
    rect(mouseX, mouseY, 5, 4);
  }
  if (mode == 3) {
    // mode is 3, draw red ellipse
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 20, 20);
  }
}

/* change the mode when the user
 * hits the number key 1,2 or 3 */
void keyPressed() {
  if (key == '1') {
    mode = 1;
    background(20);
  }
  if (key == '2') {
    mode = 2;
    background(0,180,0);
  }
  if (key == '3') {
    mode = 3;
    background(200, 0, 0);
  }
}

