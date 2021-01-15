class Trash{
  //Step 1. attributes
  float x;
  float y;
  color c;
  float speed;
  int size;
  int type; //0=plastic bottle, 1=straw, 2=styrofoam, 3=plastic bag, 4=can, 5=toothbrush
  //total 6 types of trash
  int see; //0=disappear, 1=appear
  boolean mouse;
  PImage bottle;
  PImage straw;
  PImage styrofoam;
  PImage bag;
  PImage can;
  PImage toothbrush;
  
  //Step 2. Constructor
  Trash(float tempx, float tempy, color tempc, float tempspeed, int tSize, int ttype, int tsee){
    x = tempx;
    y = tempy;
    c = tempc;
    speed = tempspeed;
    size = tSize;
    type = ttype;
    see = tsee;
    bottle = loadImage("bottle.png");
    straw = loadImage("straw.png");
    styrofoam = loadImage("styrofoam.png");
    bag = loadImage("bag.png");
    can = loadImage("can.png");
    toothbrush = loadImage("toothbrush.png");
  }
  
  //Step 3. Functions
  void display(){
    noStroke();
    if (type == 0){
      image(bottle, x, y);
    }
    else if (type == 1){
      image(straw, x, y);
    }
    else if (type == 2){
      image(styrofoam, x, y);
    }
    else if (type == 3){
      image(bag, x, y);
    }
    else if (type == 4){
      image(can, x, y);
    }
    else if (type == 5){
      image(toothbrush, x, y);
    }
  }
  
  void move(){
    x = x + speed;
    if (x > width){
      x = -width;
    }   
  }
  
  //void clicks (float mx, float my){
  //  if ((mx>x) && (mx<x + fSize) && (my>y) && (my < y + fSize)){
  //    if (type == 0){
  //      type = 1;
  //      c = #00FF00;
  //    }
  //    else if (type == 1){
  //      type = 0;
  //      c = #FF0000;
  //    }
  //  }
  //}
}
