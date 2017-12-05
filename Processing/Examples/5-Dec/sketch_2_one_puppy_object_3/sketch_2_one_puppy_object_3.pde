
Dog puppy;

void setup() {
  size(500, 500); 
  background(200);
  puppy = new Dog(0, 500);

}


void draw() {
  background(200);
  puppy.show();
  puppy.move();
}