class Bob{
  float x;
  float y;
  int pSize;
  color c;
  boolean touch;
  float speed;
  
  Bob(float tempx, float tempy, int tpSize, color tempc, float tspeed){
    x = tempx;
    y = tempy;
    pSize = tpSize;
    c = tempc;
    speed = tspeed;
  }
  
  void display(){
    fill(c);
    rect(x, y, pSize, pSize);
  }
  
  void move(int dir){
    x = x + speed*dir;
    if (x > width){
      x = 0;
    }
  }
  
  void collide(Rect theRect){
    if (theRect.x + theRect.bSize > x && theRect.x < x+pSize &&
    theRect.y + theRect.bSize > y && theRect.y < y + pSize){
      if (theRect.type == 0){
        x = 0;
        pSize -= 10;
        y = height - pSize;
        theRect.y = 0;
      }
      else if (theRect.type == 1){
        x = 0;
        pSize += 10;
        y = height - pSize;
        theRect.y = 0;
      }
    }
  }
}
