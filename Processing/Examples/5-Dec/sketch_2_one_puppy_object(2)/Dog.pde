class Dog {
 int x = 250;
 int y = 250;
 
 void show() {
   //draw face 
  fill (255, 199, 42);
  ellipse(x, y, 100, 100);
  
  //draw eyes
  fill(0);
  ellipse(x - 30, y - 10, 13, 25);
  ellipse(x + 30, y - 10, 13, 25);
  
  //draw eyebrow
  strokeWeight(4);
  line(x - 40, y - 30, 222, 220);
  line(x + 40, y - 30, 278, 220);
  
  //draw ear
  fill(0);
  ellipse(x - 50, y + 20, 13, 80);
  ellipse(x + 50, y + 20, 13, 80);
  
  //draw nose
  strokeWeight(4);
  ellipse(x, y + 30, 9, 5);
  fill(255);
 }
 
}