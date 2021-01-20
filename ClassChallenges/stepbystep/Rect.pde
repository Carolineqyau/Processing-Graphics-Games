class Rect{
  //Step 1. attributes
  float x;
  float y;
  color c;
  float speed;
  int bSize;
  int type; //0=red(bad), 1=green(good)
  boolean mouse;
  
  //Step 2. Constructor
  Rect(float tempx, float tempy, color tempc, float tempspeed, int tbSize, int ttype){
    x = tempx;
    y = tempy;
    c = tempc;
    speed = tempspeed;
    bSize = tbSize;
    type = ttype;
  }
  
  //Step 3. Functions
  void display(){
    fill(c);
    noStroke();
    rect(x, y, bSize, bSize);
  }
  
  void move(){
    y = y + speed;
    if (y > height){
      y = 0;
    }
    
  }
  
  void clicks (float mx, float my){
    if ((mx>x) && (mx<x + bSize) && (my>y) && (my < y + bSize)){
      if (type == 0){
        type = 1;
        c = #00FF00;
      }
      else if (type == 1){
        type = 0;
        c = #FF0000;
      }
    }
  }
}
  
