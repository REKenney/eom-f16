/* create basic shapes
 * for more details see
 * https://processing.org/reference/createShape_.html */
PShape bez;
PShape picaso;

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

  picaso = createShape();
  picaso.beginShape();
  picaso.vertex(191.0, 93.0);
  picaso.bezierVertex(191.0, 93.0, 191.0, 93.0, 191.0, 93.0);
  picaso.bezierVertex(191.0, 93.0, 426.0, 236.0, 426.0, 236.0);
  picaso.bezierVertex(426.0, 236.0, 539.0, 139.0, 374.0, 150.0);
  picaso.bezierVertex(209.0, 161.0, 339.0, 355.0, 339.0, 355.0);
  picaso.bezierVertex(339.0, 355.0, 519.0, -190.0, 208.0, 162.0);
  picaso.bezierVertex(-103.0, 514.0, 396.0, 513.0, 219.0, 369.0);
  picaso.bezierVertex(42.0, 225.0, 128.0, 119.0, 126.0, 137.0);
  picaso.bezierVertex(124.0, 155.0, 415.0, 7.0, 137.0, 164.0);
  picaso.bezierVertex(-141.0, 321.0, 239.0, 441.0, 224.0, 247.0);
  picaso.bezierVertex(209.0, 53.0, 58.0, 49.0, 243.0, 40.0);
  picaso.bezierVertex(428.0, 31.0, 138.0, 117.0, 401.0, 353.0);
  picaso.bezierVertex(664.0, 589.0, 283.0, 253.0, 267.0, 362.0);
  picaso.endShape(CLOSE);  // ensures shape is filled
}

void draw() {
  background(0);

  fill(255);
  noStroke();

  /* draw shape in the center of the screen
   * and stretch to a new width / heigh of 200x200 */
  shapeMode(CENTER);
  shape(bez, width/2, height/2, 200, 200);

  /* draw shape at near top-left and stretch to 800x800 */
  shape(picaso, 0, 0, 800, 800);
}

