class Rect{
  color c;
  float xpos;
  float ypos;
  float yspeed;
  boolean mouse;
  
  Rect(color tempC, float tempXpos, float tempYpos, float tempYspeed){
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    yspeed = tempYspeed;
  }
  void display(){
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 20, 20);
  }
  
  void move(){
    ypos = ypos + yspeed;
    if (ypos > height){
       ypos = 0;
    }
    if (ypos < 0) {
      ypos = height;
    }
  }
}
