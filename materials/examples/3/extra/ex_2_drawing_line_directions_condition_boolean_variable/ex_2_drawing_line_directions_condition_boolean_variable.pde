void setup() {
  size(500, 500);
  background(255);
  stroke(232, 23, 187);
}

void draw() {
  boolean movingDown = pmouseY < mouseY; 
  
  if(movingDown){
    stroke(232, 23, 187);
  } else {
    stroke(27,252,13);
  }
  
  line(mouseX, mouseY, pmouseX, pmouseY);
}

