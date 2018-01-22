// TODO: Create an object Ball that will bounce from one side of the screen to the other one. 
// Solutions are underneath, but do not look at the unless unless you are REALLY stuck
Ball ball;


void setup() {
 size(600, 600); 
 ball = new Ball();
}


void draw() {
  background(41);
  ball.show();
}