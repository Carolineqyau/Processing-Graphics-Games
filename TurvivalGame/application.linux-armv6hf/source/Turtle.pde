class Turtle{
  float x;
  float y;
  int size;
  color c;
  boolean touch;
  float speed;
  PImage turtle;
  
  Turtle(float tempx, float tempy, int tempSize, color tempc, float tspeed){
    x = tempx;
    y = tempy;
    size = tempSize;
    c = tempc;
    speed = tspeed;
    turtle = loadImage("turtle.png");
  }
  
  void display(){
    image(turtle, x, y);
  }
  
  void move(int dir){
    y = y + speed*dir;
    if (y > height){
      y = 0;
    }
    else if (y < 0){
      y = height;
    }
  }
  
  //void collide(Food theFood){
    //if (theFood.x + theFood.fSize > x && theFood.x < x+tSize &&
    //theFood.y + theFood.fSize > y && theFood.y < y + tSize){
    //  if (theFood.type == 0){
    //    //x = 0;
    //    //tSize -= 10;
    //    //y = height - tSize;
    //    //theFood.y = 0;
        
    //  }
    //  else if (theFood.type == 1){
    //    //x = 0;
    //    //tSize += 10;
    //    //y = height - tSize;
    //    //theFood.y = 0;
    //  }
    //}
  //}
}
