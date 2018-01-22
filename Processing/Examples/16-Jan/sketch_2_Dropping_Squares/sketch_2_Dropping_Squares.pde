// All the solutions will be bellow, dont look at the unless you are REALLY stuck
// You have to create a square object, and every time the user clicks the mouse,
// the square will move where the user clicked on the screen


Square square;

void setup() {
  size(600, 600);
  square = new Square();
  
}


void draw() {
  background(41); 
  square.show();
}

void mousePressed() {
  square.move();
}