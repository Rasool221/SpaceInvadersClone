public class Enemy {
  int xpos;
  int ypos;
  int HitboxHeight;
  int HitboxWidth;
  boolean[][] shape;
  int size = 2;
  int dir = 1;
  int speed = 2;
  
  public Enemy(int x, int y, boolean[][] shape) {
    this.xpos = x;
    this.ypos = y;
    this.shape = shape;
    this.HitboxWidth = this.shape[0].length*2;
    this.HitboxHeight = this.shape.length*2;
  }
  
  void show() {
    fill(255);
    noStroke();
    rectMode(CORNER);
    for(int i = 0; i < this.shape.length ;i++) {
      for(int k = 0; k < this.shape[i].length ;k++) {
        if(this.shape[i][k]) {
          rect(this.xpos+(k*size),this.ypos+(i*size),size,size);
        }
      }
    }
  }
  
  void showHitbox() {
    stroke(255,0,0);
    rectMode(CORNER);
    noFill();
    
    rect(this.xpos,this.ypos,this.HitboxWidth,this.HitboxHeight);
  }
  
  void move() {
    this.xpos = dir * speed + this.xpos;
  }
}
