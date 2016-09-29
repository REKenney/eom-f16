PImage face;

void setup() {
  size(1000, 800);
  background(255);

  // Images must be in the "data" directory to load correctly
  face = loadImage("andrew.png");
}

void draw() {
  /* draw the face centered around mouseX, mouseY
   * instead of top-left, by calling imageMode(CENTER)
   * the face will be drawn at 1/3 his original size
   * maintaining his original aspect ratio, with the 
   * statements face.width/3.0 and face.height/3.0 */
  imageMode(CENTER);
  image(face, mouseX, mouseY, face.width/3.0, face.height/3.0);
  
  /* fade the face drawing slowly over time
   * by drawing a semi-transparent rectangle on
   * top of it */
  fill(255,5);
  rect(0,0,width,height);
}

