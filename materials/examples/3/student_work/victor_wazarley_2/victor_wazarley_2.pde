int spread = 3;
boolean growing = true;

void setup() {
  size (500, 500);
}

void draw() {
  if (growing) {
    spread++;
  } else {
    spread--; // shrinking
  }

  if (spread > 200) {
    growing = false;
  }
  if (spread < 3) {
    growing = true;
  }

  background(255);

  for (int i = 1; i < 500; i += spread) {
    line (i, i + 1, 500, 0);
    line (i, i + 1, 0, 500);
  }
  line (0, 0, 500, 500);
}