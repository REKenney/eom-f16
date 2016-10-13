/* create basic shapes
 * for more details see
 * https://processing.org/reference/createShape_.html */
PShape chomp;

void setup() {
  // use the P3D rendered which supports shapes, https://processing.org/reference/size_.html
  size(500, 500, P3D);

  // create shape chomp
  chomp = createShape();
  chomp.beginShape();
  chomp.vertex(0, 0);
  chomp.vertex(50, 0);
  chomp.vertex(50, 10);
  chomp.vertex(30, 10);
  chomp.vertex(30, 20);
  chomp.vertex(50, 20);
  chomp.vertex(50, 50);
  chomp.vertex(0, 50);
  chomp.endShape(CLOSE); // ensures shape is filled
}

void draw() {
  background(0);

  fill(255);
  noStroke();

  for (int x=10; x<width; x=x+100) {
    for (int y=10; y<height; y=y+100) {
      /* check if mouse is inside square we are about to draw
       * IE if the mouseX is greater than the left side and less than the right side
       * and mouseY is greater then the top and less then the mouse is inside the square */
      if (mouseX > x && mouseX < x+80
        && mouseY > y && mouseY < y+80) {
        rect(x, y, 80, 80);
      } else {
        shape(chomp, x, y, 80, 80);
      }
    }
  }
}

