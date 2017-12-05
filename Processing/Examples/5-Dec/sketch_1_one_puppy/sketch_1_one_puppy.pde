
void setup() {
  size(500, 500); 
  background(200);

}


void draw() {
  //draw face 
  fill (255, 199, 42);
  ellipse(250, 250, 100, 100);
  
  //draw e250es
  fill(0);
  ellipse(250 - 30, 250 - 10, 13, 25);
  ellipse(250 + 30, 250 - 10, 13, 25);
  
  //draw e250ebrow
  strokeWeight(4);
  line(250 - 40, 250 - 30, 222, 220);
  line(250 + 40, 250 - 30, 278, 220);
  
  //draw ear
  fill(0);
  ellipse(250 - 50, 250 + 20, 13, 80);
  ellipse(250 + 50, 250 + 20, 13, 80);
  
  //draw nose
  strokeWeight(4);
  ellipse(250, 250 + 30, 9, 5);
  fill(255);
}