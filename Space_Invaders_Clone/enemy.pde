public class Enemy {
  int xpos;
  int ypos;
  boolean[][] shape;
  char dir;
  
  public Enemy(int x, int y, boolean[][] shape) {
    this.xpos = x;
    this.ypos = y;
    this.shape = shape;
  }
  
  void show() {
    fill(255);
    noStroke();
    rectMode(CORNER);
    int size = 2;
    for(int i = 0; i < this.shape.length ;i++) {
      for(int k = 0; k < this.shape[i].length ;k++) {
        if(this.shape[i][k]) {
          rect(this.xpos+(k*size),this.ypos+(i*size),size,size);
        }
      }
    }
    
    
    
  }
}
