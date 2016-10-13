import processing.video.*; // tell Processing to use the optional Video library
Movie heatherMovie; // declare myMovie in global space so we can use it in draw()

void setup() {
  size(1280, 720);

  /* load the movie HeatherHansenOchi_30s.mp4 into our myMovie variable
   * it must be located in the "data" directory */
  heatherMovie = new Movie(this, "HeatherHansenOchi_30s.mp4"); // 1280x720
  heatherMovie.loop(); // start the movie playing
  frameRate(5);
}

void draw() {
  image(heatherMovie, 0, 0); // write out myMovie to the screen
  
  if(mouseX < 200){
    heatherMovie.stop();
  }else{
    heatherMovie.loop();
  }
}

/* movieEvent is called every time a new frame is available to read
 * automatically by Processing */
void movieEvent(Movie m) {
  /* read the next frame into our myMovie variable
   * here "m" is actually the same as myMovie
   * this becomes useful when we have 2 or more movies
   */
  m.read();
}

