boolean is_mouse_over(menu_button obj) {
    if (mouseX > obj.xpos && mouseX < obj.xpos + obj.w) {
     if (mouseY > obj.ypos && mouseY < obj.ypos +  obj.h) {
       return true;
     }
    }
    return false;
}

boolean[] keys = {false,false,false}; // 0 = LEFT, 1 = RIGHT, 2 = SPACE

void keyPressed() {
  if (key == 'a' || keyCode == LEFT) {
    keys[0] = true;
  }
  if (key == 'd' || keyCode == RIGHT) {
    keys[1] = true;
  }
  if (key == ' ') {
    keys[2] = true;
    called = false;
  }
}
 
void keyReleased() {
  if (key == 'a' || keyCode == LEFT) {
    keys[0] = false;
  }
  if (key == 'd' || keyCode == RIGHT) {
    keys[1] = false;
  }
  if (key == ' ') {
    keys[2] = false;
    called = true;
  }
}
