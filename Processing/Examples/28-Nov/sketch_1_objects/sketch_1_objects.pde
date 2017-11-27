Drop d;

void setup() {
  size(500, 500);
  d = new Drop();
}

void draw() {
  background(41);
  fill(255);
  ellipse(d.pos_x, d.pos_y, d.size, d.size);
}