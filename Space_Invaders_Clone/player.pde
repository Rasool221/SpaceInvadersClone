public class Player {
  int xpos;
  int ypos;
  char dir;
  
  public Player(int x, int y) {
      this.xpos = x;
      this.ypos = y;
      this.dir = ' ';
  }
  
  void move() {// vaid DIRECTIONS 'L' and 'R'
    if (keyPressed) {
      if (key == 'a' || keyCode == LEFT) {
        this.dir = 'L';
      }
      else if (key == 'd' || keyCode == RIGHT) {
        this.dir = 'R';
      }
    }
    else {
      this.dir = ' ';
    }
    
    if(this.dir=='R' && this.xpos<width-20) {
      this.xpos += 2;
    }
    
    if(this.dir=='L'&& this.xpos>20) {
      this.xpos -= 2;
    }
  }
  
  
  void show() {
    print(this.dir);
    fill(255);
    rectMode(CENTER);
    noStroke();
    rect(xpos,ypos,20,10,5,5,0,0);
    triangle(xpos-5, ypos, xpos+5, ypos, xpos, ypos-10);
  }
}
