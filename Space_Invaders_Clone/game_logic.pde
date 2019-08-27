enum screen {
  main_menu,
  game,
  directions,
}

int[] middleOfSquare(int xpos, int ypos, int w, int h) {
  int xposMiddle = xpos + w/2;
  int yposMiddle = ypos + h/2;
  int[] temp = {xposMiddle,yposMiddle};
  return temp;
}

void check_for_bullet_hit() {
  // to do 
   
  for (int i = 0; i < Bullets.length; i++) {
    if(Bullets[i].visible) {
      for (int k = 0; k < Enemys.length; k++) {
        for (int j = 0; j < Enemys[k].length; j++) {
          int[] tempPos = middleOfSquare(Bullets[i].xpos,Bullets[i].ypos,Bullets[i].w,Bullets[i].h);
          if(((  tempPos[0] >=  Enemys[k][j].xpos && tempPos[0] <= Enemys[k][j].xpos+Enemys[k][j].HitboxWidth) && (
                 tempPos[1] >=  Enemys[k][j].ypos && tempPos[1] <= Enemys[k][j].ypos+Enemys[k][j].HitboxHeight)) && 
                 Enemys[k][j].visible) {
            Enemys[k][j].visible = false;
            Bullets[i].visible = false;
            print("a");
          }
        }
      }
    }
  }
}
