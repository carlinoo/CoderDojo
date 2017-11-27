int number = 26;
float[] position_x = new float[number];
float[] position_y  = new float[number];
int i = 0;

void setup() {
  size(500, 500);
  background(41);

  // create random values to add to the arrays
  
  
  
}


void draw() {
  int i = 0;
  while (i < number) {
   noFill();
   stroke(255);
   ellipse(position_x[i], position_y[i], 20, 20);
   i++;
  }
}


// PART 1
//while (i < number) {
//   position_x[i] = random(0, 500);
//   position_y[i] = random(0, 500);
//   i = i + 1;
//  }