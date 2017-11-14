class Star {
  int HabHyg;
  int Hip;
  boolean hab;
  PVector pos = new PVector();
  String name;
  Float distance;
  float mass;
  color c;
  
  Star(TableRow row) {
    this.HabHyg = row.getInt("HabHyg");
    this.Hip = row.getInt("Hip");
    this.hab = (row.getInt("Hab?") == 1);
    this.pos.x = row.getFloat("Xg");
    this.pos.y = row.getFloat("Yg");
    this.pos.z = row.getFloat("Zg");
    this.name = row.getString("Display Name");
    this.distance = row.getFloat("Distance");
    this.mass = row.getFloat("AbsMag");
    this.c = color(255, 0, 0);
  }
  
  
  public void display() {
     float x = map(this.pos.x, -5, 5, 50, width - 50);
     float y = map(this.pos.y, -5, 5, 50, height - 50);
     noFill();
     stroke(this.c);
     ellipse(x, y, this.mass, this.mass);
     text(this.name, x + this.mass, y + this.mass/2 - 5);
  }
}