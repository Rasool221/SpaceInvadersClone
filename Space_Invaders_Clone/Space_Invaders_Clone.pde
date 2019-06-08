boolean isinmenu;
screen current_screen;


void setup() {
  size(400, 400);
  isinmenu = true;
  current_screen = screen.main_menu;  
}

menu_button play_btn = new menu_button(150, 100, 100, 50, "play");

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
      
     if (is_mouse_over(play_btn)) {
      play_btn.draw_outline(); 
     } 
     break;
   case game:
     // draw game here
     break;
   case directions:
     // to do
     break;
   default:
     break; // just in case
  }
 

}

void mousePressed() {
   if (is_mouse_over(play_btn)) {
    current_screen = screen.game;
   }
}
