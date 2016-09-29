/* Instead of choosing Sketch -> Run
 * start this sketch by choosing
 * Sketch -> Tweak from the file menu
 * 
 * once in Tweak mode you can change values and see their
 * resultant output without restarting the sketch
 * in real-time
 *
 * See http://galsasson.com/tweakmode/
 * for more information
 */
int x = 50;

void setup() {
  size(300,300);
}

void draw() {
  background(255, 255, 255);
  
  fill(255, 255, 255);
  stroke(0, 0, 0);
  strokeWeight(1);
  ellipse(x,50,20,20);
  x = x + 1;
  
  fill(255, 255, 255);
  stroke(0, 0, 0);
  strokeWeight(1);
  ellipse(20,20,50,50);
  
  fill(255, 255, 255);
  stroke(0, 0, 0);
  strokeWeight(1);
  ellipse(50,50,50,50);
  
  /* restart the circle if it has reached
   * the right-hand side of the screen */
  if(x > 300){
    x = 50;
  }
}