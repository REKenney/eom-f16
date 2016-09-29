void setup() {
  size(1000, 800);
  background(255);

  // Images must be in the "data" directory to load correctly
  PImage bird = loadImage("bm-bird-audobon.jpg");

  /* draw original, at original pixel dimensions
   * when processing loads the image, it also makes
   * available .width and .height on the variable */
  image(bird, 0, 0, bird.width, bird.height);

  /* draw the image, but stretch it
   * keeping his original proportions */
  image(bird, 600, 0, bird.width/4.0, bird.height/4.0);
}

