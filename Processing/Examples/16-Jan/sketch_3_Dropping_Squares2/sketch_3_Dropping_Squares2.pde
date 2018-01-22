// All the solutions will be bellow, dont look at the unless you are REALLY stuck
// You have to create a square object with gravity. Use the same code from the previous one
// and add the gravity, and every time the user clicks the mouse,
// the square will move where the user clicked on the screen

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