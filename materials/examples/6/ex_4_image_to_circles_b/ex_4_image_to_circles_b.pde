/* Load a video, but instead of drawing it directly
 * draw ellipses the same color as the underlying video pixels
 *
 */

int CIRCLE_SIZE = 5;

import processing.video.*;
Movie myMovie;

void setup() {
  size(1280, 720);
  frameRate(15);

  myMovie = new Movie(this, "HeatherHansenOchi_30s.mp4"); // 1280x720, load video
  myMovie.loop(); // start the movie playing
}

void draw() {
  /* make sure to clear the background, because our circles won't cover the screen */
  background(0);
  
  myMovie.loadPixels(); // tell Processing we want to use the pixels array
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
      color pixel = myMovie.pixels[pixelLocation];

      // draw the circle
      ellipseMode(CORNER);
      noStroke();
      fill(pixel);
      ellipse(i, j, CIRCLE_SIZE, CIRCLE_SIZE);
    }
  }
}

/* movieEvent is called every time a new frame is available to read
 * automatically by Processing */
void movieEvent(Movie m) {
  m.read(); // read movie frame
}

