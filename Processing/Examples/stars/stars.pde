Table table;
ArrayList<Star> stars;
ArrayList<Star> pressed_stars;

void setup() {
 size(800, 800);
 background(41);
 table = loadTable("CSV.csv", "header");
 stars = new ArrayList<Star>();
 loadData(table);
 draw_canvas();
 pressed_stars = new ArrayList<Star>();
}


void draw() {
  background(41);
  draw_canvas();
  show_connection();
  display_stars();
  
}

void loadData(Table t) {
  for (TableRow row : t.rows()) {
   Star star = new Star(row);
   stars.add(star);
   //
  }
}


void draw_canvas() {
 stroke(138,43,226);
 
 for (int i = -5; i < 6; i++) {
   float value = map(i, -5, 5, 50, width - 50);
   line(50, value, width - 50, value);
   text(i, 20, value + 5);
   text(i, value - 5, 30);
   line(value, 50, value, height - 50);
 }
}


void display_stars() {
 for (Star star : stars) {
   star.display();
 }
}

void mousePressed() {

 for (Star star : stars) {
   float sx = map(star.pos.x, -5, 5, 50, width - 50);
   float sy = map(star.pos.y, -5, 5, 50, height - 50);

  if (dist(sx, sy, mouseX, mouseY) < star.mass/2) {
   pressed_stars.add(star);
   return;
  }
 }
}


void show_connection() {
 if (pressed_stars.size() > 2) {
   pressed_stars.clear();
   return;
 } else if (pressed_stars.size() == 2) {
   stroke(255, 255, 0);
   
   float s1x = map(pressed_stars.get(0).pos.x, -5, 5, 50, width - 50);
   float s1y = map(pressed_stars.get(0).pos.y, -5, 5, 50, height - 50);
   float s2x = map(pressed_stars.get(1).pos.x, -5, 5, 50, width - 50);
   float s2y = map(pressed_stars.get(1).pos.y, -5, 5, 50, height - 50);
      
   line(s1x, s1y, s2x, s2y);
   
   text("Distance from ".concat(pressed_stars.get(0).name).concat(" to ").concat(pressed_stars.get(1).name).concat(" is ").concat(String.valueOf(dist(pressed_stars.get(0).pos.x, pressed_stars.get(0).pos.y, pressed_stars.get(0).pos.z, pressed_stars.get(1).pos.x, pressed_stars.get(1).pos.y, pressed_stars.get(1).pos.z))), 25, 775);
 } else if (pressed_stars.size() == 1) {
   stroke(255, 255, 0);
   
   float s1x = map(pressed_stars.get(0).pos.x, -5, 5, 50, width - 50);
   float s1y = map(pressed_stars.get(0).pos.y, -5, 5, 50, height - 50);
   
   line(s1x, s1y, mouseX, mouseY);
 }
}