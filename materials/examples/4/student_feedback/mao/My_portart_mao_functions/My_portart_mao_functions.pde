void setup() {
  size(600, 600);

  drawFace();
  drawGlasses();
  drawMouth();
  drawNose();
  drawHair();
}

void drawFace() {
  beginShape();
  fill(#FFE8D6);
  vertex(200, 70);
  vertex(150, 170);
  vertex(150, 370);
  vertex(220, 510);
  vertex(380, 510);
  vertex(450, 370);
  vertex(450, 170);
  vertex(400, 70);
  vertex(300, 80);
  vertex(200, 70);
  endShape();

  fill(#EDD9C9);
  arc(150, 280, 60, 110, HALF_PI, PI+HALF_PI);
  arc(451, 280, 60, 110, radians(-90), radians(90));
}

void drawGlasses() {
  //glasses 
  fill(#FFFEFC);
  strokeWeight(10);
  rect(170, 200, 100, 60);
  rect(330, 200, 100, 60);

  //glasses feet
  strokeWeight(1);
  fill(#050505);
  rect(150, 225, 20, 10);
  rect(270, 225, 60, 10);
  rect(430, 225, 20, 10);
}

void drawMouth() {
  beginShape();
  fill(#FF5858);
  vertex(250, 380);
  vertex(245, 390);
  vertex(255, 410);
  vertex(350, 410);
  vertex(360, 390);
  vertex(355, 380);
  vertex(350, 390);
  vertex(350, 390);
  vertex(255, 390);
  vertex(250, 380);
  endShape();
}

void drawNose() {
  fill(#C9C9C9);
  ellipse(290, 350, 10, 10);
  ellipse(310, 350, 10, 10);
  ellipse(300, 430, 50, 10);
}

void drawHair() {
  beginShape();
  vertex(150, 225);
  vertex(140, 170);
  vertex(170, 60);
  vertex(300, 40);
  vertex(430, 60);
  vertex(460, 170);
  vertex(450, 225);
  vertex(450, 225);
  vertex(450, 170);
  vertex(400, 70);
  vertex(300, 80);
  vertex(200, 70);
  vertex(150, 170);
  vertex(150, 225);
  endShape();
}