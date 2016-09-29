int spread = 3;

void setup() {
  size (500, 500);
}

void draw() {
  spread++;
  if (spread > 200) {
    spread = 3;
  }

  background(255);

  for (int i = 1; i < 500; i += spread) {
    line (i, i + 1, 500, 0);
    line (i, i + 1, 0, 500);
  }
  line (0, 0, 500, 500);
}