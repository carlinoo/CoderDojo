//basic image and mouse example
PImage pop1;
PImage pop2;
 
//stuff to do once
void setup() {
 //tells the computer how big the screen is
 size(600, 600);
 pop1 = loadImage("pop1.jpg");
 pop2 = loadImage("pop2.jpg");
 //draws the image at the center
 imageMode(CENTER); 
}
 
//do stuff forever
void draw() {
  //colors the screen
  background(255);
   
  //if you press the mouse, this pic shows
  if (mousePressed) {
    image(pop2, mouseX, mouseY);
  }
  //shows image if you don't press the mouse
  else {
    image(pop1, mouseX, mouseY);
  }
}