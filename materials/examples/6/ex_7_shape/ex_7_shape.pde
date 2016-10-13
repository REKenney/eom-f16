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

  /* draw shape in the center of the screen
   * and stretch to a new width / heigh of 200x200 */
  shapeMode(CENTER);
  shape(chomp, width/2, height/2, 200, 200);
}

