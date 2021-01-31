class Flower{
  float xpos;
  float ypos;
  float xspeed;
  color c;
  
  boolean mouse;
  
  Flower(color tempC, float tempXpos, float tempYpos, float tempXspeed){
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  
  void display() {
    if (mouse == true){
      fill(#AAAAAA);
    }
    else{
      fill(c);
    }
    noStroke();
    ellipse(xpos+13, ypos-10, 30, 30);
    ellipse(xpos, ypos-30, 30, 30);
    ellipse(xpos-13, ypos-10, 30, 30);
    stroke(#00FF00);
    line(xpos, ypos, xpos, ypos+100);
  }
  
  void drive(){
    xpos = xpos + xspeed;
    if (xpos > width){
      xpos = 0;
    }
    if (xpos < 0) {
      xpos = width;
    }
  }
  
  void crush(int mx, int my){
    // Left edge is x, Right edge is x + w
        if ((mx > xpos-15 && mx < xpos + 15) && (my > ypos-30 && my < ypos + 20)) {
      mouse = true;
    } else {
      mouse = false;
    }
  }
}
