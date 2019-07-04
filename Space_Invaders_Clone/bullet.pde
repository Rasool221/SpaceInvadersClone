class bullet {
 int xpos;
 int ypos;
 int speed;
 
 int hitbox_width;
 int hitbox_height;
 
 int w;
 int h;
 
 public bullet(int x, int y, int speed, int w, int h) {
  this.xpos = x;
  this.ypos = y;
  this.speed = speed;
  this.w = w;
  this.h = h;
  this.hitbox_width = w;
  this.hitbox_height = h;
 }
 
 void show() {
  fill(#FFFFFF);
  rect(this.xpos, this.ypos, this.w, this.h);
 }
 
 /*
 * for debugging purposes
 */
 void show_hitbox() {
   noFill();
   stroke(#FF0000);
   rect(this.xpos, this.ypos, this.hitbox_width, this.hitbox_height);
 }
 
 void update() {
  this.ypos -= this.speed;
 }
 
}
