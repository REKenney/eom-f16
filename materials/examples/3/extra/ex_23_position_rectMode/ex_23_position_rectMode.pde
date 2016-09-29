void setup() {
  size(400, 400);
  
  // 200,200 is center
  // 50/2 is half the width of the square
  // draw center
  // from top-left corner of square
  rect(200-25,200-25,50,50);
  
  // an easier way
  rectMode(CENTER);
  fill(255,0,0,20);
  rect(200,200,120,120);
  
  ellipseMode(CENTER);
  ellipse(200,200,8,8);

  // ellipse in top left corner of canvas
  ellipseMode(CORNER);
  ellipse(0,0,20,20);
  
  // ellipse on top middle of canvas
  ellipseMode(CENTER);
  //width/2 if half X / or center
  //25 brings down the ellipse
  ellipse(width/2,25,50,50);
}

