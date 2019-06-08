boolean isinmenu;

void setup() {
  size(400, 400);
  isinmenu = true;  
}

 menu_button play_btn = new menu_button(150, 100, 100, 50, "play");

void draw() {
  background(0);
  
  if (isinmenu) {
    fill(#16F57C);
    textSize(20);
    text("Space Invaders Clone", 100, 50);
    
    fill(#FFFFFF);
    strokeWeight(4);
    play_btn.show();
    
    if (is_mouse_over(play_btn)) {
     play_btn.draw_outline(); 
    } 
    
  } else if (!isinmenu) {
   // draw game here
   
   
   
  }
}

void mousePressed() {
   if (is_mouse_over(play_btn)) {
    isinmenu = false; 
   }
}
