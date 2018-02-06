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
   
  smiling_loop();
  show_text();
}



void smiling_loop() {
  if ((frameCount / 60) % 2 == 0) {
    image(pop2, mouseX, mouseY);
  } else {
    image(pop1, mouseX, mouseY);
  }
}


void show_text() {
 textSize(50);
 fill(255, 0, 0);
 String hello = give_me_hello();
 text(hello, width/2, height/2);  
}



int give_me_one() {
  return 1;
}



String give_me_hello() {
  String hello = "Hello Poo!";
  return hello;
}