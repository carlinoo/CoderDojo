//class Square {
// // attributes
 
// // function 1: show
 
 
 
// // function 2: move
 
 
// // function 3: update => add gravity until the square touches the floor
 
 
//}









































//class Square {
// int x = width/2;
// float y = height/2;
// float speed = 5;
// int size = 50;
// float gravity = 1.05;
// boolean is_falling = true;
 
// void show() {
//   noStroke();
//   fill(255);
//   rect(x, y, size, size); 
// }
 
// void update() {
//   if (y > height - size) {
//     is_falling = false;
//     speed = speed - speed/5;
//     println(speed);
//     if (speed < 2) {
//       speed = 0;
//     }
//   }
   
//   if (speed < 0.5) {
//     is_falling = true;
//   }
   
//  if (is_falling) {
//    y = y + speed;
//    speed = speed * gravity;
//  } else {
//    y = y - speed;
//    speed = speed / gravity;
//  }
  
// }
 
 
// void move() {
//  x = mouseX;
//  y = mouseY;
// }
//}