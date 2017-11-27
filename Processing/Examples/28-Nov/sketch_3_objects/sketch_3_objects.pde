Drop[] array;
int i = 0;

void setup() {
  size(500, 500);
  array = new Drop[12];
  
  i = 0;
  
  while (i < 12) {
   Drop d = new Drop();
   array[i] = d;
   i++;
  }
  
}

void draw() {
  background(41);
  fill(255);
  
  i = 0;
  
  while (i < 12) { 
   array[i].show();
   i++;
  }
}