int CIRCLE_SIZE = 5;
PImage img;

void setup() {
  size(484, 714);
  frameRate(15);

  // Images must be in the "data" directory to load correctly
  img = loadImage("bm-bird-audobon.jpg");
}

void draw() {
  /* make sure to clear the background, because our circles won't cover the screen */
  background(0);

  img.loadPixels(); // tell Processing we want to use the pixels array
  for (int i=0; i<width; i=i+CIRCLE_SIZE) {
    for (int j=0; j<height; j=j+CIRCLE_SIZE) {
      /* this calculation converts our 2-dimensional
       * coordinates (i,j) into the 1-dimensional location
       * of the coresponding pixel location
       * see https://processing.org/tutorials/pixels/ for
       * a more detailed explanation
       */
      int pixelLocation = j*width+i;

      /* grab the color of the pixel below our circle, well actually
       * just the top-left corner of our circle, we ignore the other pixels */
      color pixel = img.pixels[pixelLocation];

      // draw the circle
      ellipseMode(CORNER);
      noStroke();
      fill(pixel);
      ellipse(i, j, CIRCLE_SIZE, CIRCLE_SIZE);
    }
  }
}

