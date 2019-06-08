public class Player {
  int xpos;
  int ypos;
  
  public Player(int x, int y) {
      this.xpos = x;
      this.ypos = y;
      println(height,width);
  }
  
  
  void show() {
    fill(255);
    rectMode(CENTER);
    noStroke();
    rect(xpos,ypos,20,10,5,5,0,0);
    triangle(xpos-5, ypos, xpos+5, ypos, xpos, ypos-10);
  }
}
