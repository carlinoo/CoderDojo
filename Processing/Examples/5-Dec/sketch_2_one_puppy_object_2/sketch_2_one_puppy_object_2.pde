
Dog puppy;

void setup() {
  size(500, 500); 
  background(200);
  puppy = new Dog(400, 200);

}


void draw() {
  puppy.show();
}