class Drop {
  float pos_x = random(0, width);
  float pos_y = random(0, height);
  int size = 50;
  
  
  void show() {
   ellipse(this.pos_x, this.pos_y, this.size, this.size);
  }
  
}