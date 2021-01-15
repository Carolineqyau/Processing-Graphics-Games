class Food{
  //Step 1. attributes
  float x;
  float y;
  color c;
  float speed;
  int size;
  int type; //0=crab, 1=jellyfish, 2=squid, 3=fish, 4=shrimp, 5=seastar
  //total 6 types of food
  int see; //0=disappear, 1=appear
  boolean mouse;
  PImage shrimp;
  PImage jellyfish;
  PImage squid;
  PImage fish;
  PImage crab;
  PImage seastar;
  
  //Step 2. Constructor
  Food(float tempx, float tempy, color tempc, float tempspeed, int tSize, int ttype, int tsee){
    x = tempx;
    y = tempy;
    c = tempc;
    speed = tempspeed;
    size = tSize;
    type = ttype;
    see = tsee;
    crab = loadImage("crab.png");
    jellyfish = loadImage("jellyfish.png");
    squid = loadImage("squid.png");
    fish = loadImage("fish.png");
    shrimp = loadImage("shrimp.png");
    seastar = loadImage("seastar.png");
  }
  
  //Step 3. Functions
  void display(){
    noStroke();
    if (type == 0){
      image(crab, x, y);
    }
    else if (type == 1){
      image(jellyfish, x, y);
    }
    else if (type == 2){
      image(squid, x, y);
    }
    else if (type == 3){
      image(fish, x, y);
    }
    else if (type == 4){
      image(shrimp, x, y);
    }
    else if (type == 5){
      image(seastar, x, y);
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
