//Caroline Yau
//Reading Assignment 6

//Exercise 4
Apple sweetHeart, snowWhite;
float where, wheree;

void setup(){
  size(300, 300);
  noStroke();
  colorMode(HSB, 360);
  where = random(width);
  wheree = random(width);
  sweetHeart = new Apple(where, 20, 40, 6, 0);
  snowWhite = new Apple(wheree, 10, 30, 7, 80);
}

void draw(){
  background(210, 50, 360);
  sweetHeart.colorize();
  sweetHeart.display();
  sweetHeart.fall();
  snowWhite.colorize();
  snowWhite.display();
  snowWhite.fall();
}

class Apple {
  float x, y;
  float diameter;
  float speed;
  float c;

  //Constructor
  Apple(float xpos, float ypos, float dia, float sp, float col){
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
    c = col;
  }
  
  void fall(){
    y += speed;
    if (y > height){
      y = 0;
      x = random(width);
    }
  }
  
  void display(){
    ellipse(x, y, diameter, diameter);
    fill(50, 360, 150);
    rect(x-2, y-4*diameter/6, 4, diameter/3);
  }
  
  void colorize(){
    fill(c, 300, 340);
  }
}
