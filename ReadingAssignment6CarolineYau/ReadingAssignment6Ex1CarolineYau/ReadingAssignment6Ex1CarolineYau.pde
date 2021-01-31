//Caroline Yau
//Reading Assignment 5

//Exercise 1

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
