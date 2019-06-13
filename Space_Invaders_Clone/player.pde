public class Player {
  int xpos;
  int ypos;
  char dir;
  
  public Player(int x, int y) {
      this.xpos = x;
      this.ypos = y;
      this.dir = ' ';
  }
  
  void move(boolean[] keys) {// 0 = LEFT, 1 = RIGHT, 2 = SPACE

    if(keys[1] && this.xpos<width-20) {
      this.xpos += 2;
    }
    
    if(keys[0] && this.xpos>20) {
      this.xpos -= 2;
    }
    
    if(keys[2]) {
      //do something
      print("pew");
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
