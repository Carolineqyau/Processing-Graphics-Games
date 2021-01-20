//Caroline Yau
//Exercise 2.2 In Motion

//Program 1. Autostart (animations)
//Scanning Machine

int spacing = 20;
int xg = -5; //green scan light
int xl; //letter
int xw = 400; //words
int yl;
int yw = 125;

void setup(){
  size(500, 500);
}

void draw(){
  background(#e5e8ea);
  noStroke();
  fill(#f5f3eb);
  rect(xl = 50, yl = 100, 400, 300); //paper
  fill(0);
  for (int i=0; i<8; i++){
    rect(xw - i*spacing, yw, 2, 225); //word lines
  }
  fill(0, 255, 0, 100); //half transparent
  rect(xg, 0, 5, height); //scanning green light
  xg++;
  if (xg > 500){ //reset
    xg = -5;
  }
}
