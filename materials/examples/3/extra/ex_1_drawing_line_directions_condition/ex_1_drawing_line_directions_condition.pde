void setup() {
  size(500, 500);
  background(255);
  stroke(232, 23, 187);
}

void draw() {
  if(pmouseY < mouseY){
    // moving down
    stroke(232, 23, 187);
  } else {
    // else we are moving up
    stroke(27,252,13);
  }
  
  line(mouseX, mouseY, pmouseX, pmouseY);
}

