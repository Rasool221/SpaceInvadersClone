boolean isinmenu;
screen current_screen;
Player gamePlayer;
int numberOfEnemiesPerRow = 10;
int rows = 5;
Enemy[][] Enemys = new Enemy[5][numberOfEnemiesPerRow];
int TimePerEnemyMovement = 200;
boolean moveEnemys = false;
int savedTime;
int yEnemySpeed = 10;

void setup() {
  //noSmooth();
  size(400, 400);
  isinmenu = true;
  current_screen = screen.main_menu;  
  gamePlayer = new Player(width/2, height - height/6);
  //Enemytest = new Enemy(width/2, height/6, enemy3);
  createEnemies(width,height);
  
  int savedTime = millis();
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
   
     strokeWeight(1);
     
     gamePlayer.show();
     gamePlayer.move(keys);
     
     //Enemytest.show();
     
     EnemyMove(millis()-savedTime);
     drawEnemies();
     
     
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

void createEnemies(int w, int h) {
  int yOffset = h/6;
  int x = (w - w/5)/numberOfEnemiesPerRow;
  int y = (h-h/6)/(rows*2);
  for(int i = 0; i < rows;i++) {
    for(int k = 0; k < numberOfEnemiesPerRow ;k++) {
      if(i == 2) {
        Enemys[i][k] = new Enemy(x*k, yOffset +(y*i), enemy1);
      }
      else {
        Enemys[i][k] = new Enemy(x*k, yOffset +(y*i), enemy3);
      }
    }
  }
}

void drawEnemies() {
  int x = (width - width/5)/numberOfEnemiesPerRow;
  int y = (height-height/6)/(rows*2);
  
  for(int i = 0; i < Enemys.length;i++) {
    for(int k = 0; k < Enemys[i].length ;k++) {
      
      Enemys[i][k].show();
      Enemys[i][k].showHitbox();
      
      
      
      
      if(moveEnemys) {
        Enemys[i][k].move();
        
        if(Enemys[0][0].xpos+(x*numberOfEnemiesPerRow)> width) {
          Enemys[i][k].dir = -1;
          Enemys[i][k].ypos += 20;
        }
        
        else if(Enemys[0][0].xpos < 0) {
          Enemys[i][k].dir = 1;
          Enemys[i][k].ypos += yEnemySpeed;
        }
      }
    }
  }
  
  noFill();
  stroke(0,255,0);
  rect(Enemys[0][0].xpos, Enemys[0][0].ypos, x*numberOfEnemiesPerRow, y*rows);
}

void EnemyMove(int time) {
  if(time > TimePerEnemyMovement) {
    moveEnemys = true;
    savedTime = millis();
  }
  else {
    moveEnemys = false;
  }
}
