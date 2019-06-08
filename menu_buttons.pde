public class menu_button {
  int xpos;
  int ypos;
  int w;
  int h;
  String label;
 
  public menu_button(int x, int y, int w, int h, String label) {
      this.xpos = x;
      this.ypos = y;
      this.w = w;
      this.h = h;
      this.label = label;
  }
 
  void show() {
     rect(this.xpos, this.ypos, this.w, this.h);
     fill(0);
     textSize(13);
     text(this.label, this.xpos + 36, this.ypos + 30);
  }

   void draw_outline() {
    noFill();
    strokeWeight(3);
    fill(#FFFFFF);
    rect(this.xpos - 4, this.ypos - 4, this.w + 4, this.h + 4);
    fill(0);
    textSize(15);
    text(this.label, this.xpos + 30, this.ypos + 30);
  }

}
