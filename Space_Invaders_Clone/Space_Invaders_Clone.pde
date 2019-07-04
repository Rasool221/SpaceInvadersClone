boolean isinmenu;
screen current_screen;
Player gamePlayer;
Enemy Enemytest;

bullet[] bullets_arr = {};

void setup() {
  //noSmooth();
  size(400, 400);
  isinmenu = true;
  current_screen = screen.main_menu;  
  gamePlayer = new Player(width/2, height - height/6);
  Enemytest = new Enemy(width/2, height/6, enemy2);
}

menu_button play_btn = new menu_button(150, 100, 100, 50, "play");
menu_button dir_btn = new menu_button(150, 160, 100, 50, "directions");
menu_button back_btn = new menu_button(10, 10, 50, 50, "back");

void draw() {
  background(0);
  
  switch (current_screen) {
   case main_menu:
     fill(#16F57C);
     textSize(20);
     text("Space Invaders Clone", 100, 50);
      
     fill(#FFFFFF);
     strokeWeight(4);
     play_btn.show();
     dir_btn.show(); 
      
     if (is_mouse_over(play_btn)) {
      play_btn.draw_outline(); 
     } 
     
     if (is_mouse_over(dir_btn)) {
      dir_btn.draw_outline(); 
     } 
     break;
   case game:
     gamePlayer.show();
     gamePlayer.move(keys);
     
     if (keys[2]) {
       bullets_arr = (bullet[]) append(bullets_arr, new bullet(gamePlayer.xpos, gamePlayer.ypos, 2, 5, 5));  
     }
     
     if (bullets_arr.length != 0) {
       for (int i = 0; i < bullets_arr.length; i++) {
         bullets_arr[i].show();
         bullets_arr[i].show_hitbox();
         bullets_arr[i].update();
       }
     }
   
     Enemytest.show();
     back_btn.show();


     if (is_mouse_over(back_btn)) {
      back_btn.draw_outline(); 
     } 
     break;
   case directions:
     
     back_btn.show();
     
     if (is_mouse_over(back_btn)) {
        back_btn.draw_outline(); 
     }
     break;
   default:
     break; // just in case
  }
}

void mousePressed() {
   if (is_mouse_over(play_btn)) {
    current_screen = screen.game;
   } else if (is_mouse_over(back_btn)) {
     current_screen = screen.main_menu;  
   } else if (is_mouse_over(dir_btn)) {
     current_screen = screen.directions;
   } 
}
