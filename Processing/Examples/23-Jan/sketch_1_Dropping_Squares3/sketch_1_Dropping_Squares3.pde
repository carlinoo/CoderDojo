// All the solutions will be bellow, dont look at the unless you are REALLY stuck
// Use the same code you wrote last week. We need the square with gravity. When a user clicks,
// The square moves to where the user clicked. The square falls and bounces a little bit

Square square;

void setup() {
  size(600, 600);
  square = new Square();
}


void draw() {
  background(41); 
  square.show();
  square.update();
}

// When the mouse is pressed, make the square move where the mouse is
// hint: mouseX and mouseY
void mousePressed() {
  square.move();
}