import processing.video.*;
Capture cam;

void setup() {
  size(640, 480);

  /* look for available webcams
   * quit the sketch if no webcams
   * are available */
  String[] cameras = Capture.list();
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    /* start a new Capture the width and height of the sketch */
    cam = new Capture(this, width, height);
    cam.start();
  }
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }

  // draw frame of video capture
  image(cam, 0, 0);
}
