int[] sat = new int[7];
float[] rot = new float[7];

void setup() {
  size(360, 500);
  colorMode(HSB); // 0-360
  noStroke();

  // initialize rotation array to 0
  for(int i=0; i<rot.length; i++){
    rot[i] = 0;
  }

  sat[0] = 100;
  sat[1] = 200;
  sat[2] = 300;
  sat[3] = 320;
  sat[4] = 360;
  sat[5] = 40;
  sat[6] = 80;
}

void draw() {
  background(0);
  
  for (int s=0; s<sat.length; s++) {
    pushMatrix(); //save old rotation
    rotate(rot[s]);
    for (int i=0; i<width; i=i+36) {
      fill(i, sat[s], 360);
      rect(i, s*40, 36, 36);
    }
    popMatrix(); //restore old rotation
  }
}

void mousePressed() {
  for (int i=0; i<sat.length; i++) {
    sat[i] = int(random(0, 360));
    rot[i] = random(-2*PI, 2*PI);
  }
}

