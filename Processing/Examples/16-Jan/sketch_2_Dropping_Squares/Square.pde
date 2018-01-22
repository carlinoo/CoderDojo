class Square {
 int x = width/2;
 int y = height/2;
 
 void show() {
   noStroke();
   fill(255);
   rect(x, y, 50, 50); 
 }
 
 
 void move() {
  x = mouseX;
  y = mouseY;
 }
}