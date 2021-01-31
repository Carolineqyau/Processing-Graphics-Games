
//Caroline Yau
//Reading Exercise 6

//Exercise 2

Spot sp, spp;
int c=0;
int b=0;

void setup(){
  size(100, 100);
  noStroke();
  colorMode(HSB, 300);
  sp = new Spot(33, 50, 30, 1.5);
  spp = new Spot(66, 50, 20, 2);
}

void draw(){
  fill(0, 15);
  rect(0, 0, width, height);
  sp.move();
  sp.colorize();
  sp.display();
  spp.move();
  spp.colorize();
  spp.display();
}

class Spot {
  float x, y;
  float diameter; 
  float speed;
  int direction = 1;
  
  //Constructor
  Spot(float xpos, float ypos, float dia, float sp) { 
    x = xpos;
    y = ypos; 
    diameter = dia; 
    speed = sp;
  }
  
  void move() {
    y += (speed * direction);
    if ((y > (height - diameter/2)) || (y < diameter/2)) {
      direction *= -1; 
    }
  }
  
  void display() {
    ellipse(x, y, diameter, diameter);
  }
  
  void colorize(){
    fill(c, 300, b);
    c++;
    b++;
    
    if (c >= 300){
      c = 0;
    }
    if (b == 300){
      b = 300;
    }
  }
}
