/* create basic shapes
 * for more details see
 * https://processing.org/reference/createShape_.html */
PShape bez;

void setup() {
  // use the P3D rendered which supports shapes, https://processing.org/reference/size_.html
  size(500, 500, P3D);

  // create the shape
  bez = createShape();
  bez.beginShape();
  bez.vertex(248.0, 125.0);
  bez.bezierVertex(169.0, 102.0, 422.0, 89.0, 248.0, 125.0);
  bez.bezierVertex(74.0, 161.0, 264.0, 167.0, 301.0, 196.0);
  bez.bezierVertex(338.0, 225.0, 222.0, 221.0, 222.0, 221.0);
  bez.bezierVertex(222.0, 221.0, 322.0, 402.0, 134.0, 339.0);
  bez.bezierVertex(-54.0, 276.0, 49.0, 147.0, 117.0, 151.0);
  bez.bezierVertex(185.0, 155.0, 36.0, 13.0, 185.0, 71.0);
  bez.endShape(CLOSE);  // ensures shape is filled
}

void draw() {
  background(0);

  fill(255);
  noStroke();

  /* draw shape in the center of the screen
   * and stretch to a new width / heigh of 200x200 */
  shapeMode(CENTER);
  shape(bez, width/2, height/2, 200, 200);
}

