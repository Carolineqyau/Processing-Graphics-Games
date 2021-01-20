//Caroline Yau
//Exercise 3.2 Free Patterns

//1. Dangos

color c[] = {color(245, 233, 225), color(250, 220, 229), color(245, 238, 225), color(225, 237, 216), color(255)};
void setup(){
  size (500, 500);
}

void draw(){
  background(255, 252, 247);
  smooth();
  for (int j=0; j<5; j++){
    for(int i=0; i<5; i++){
      pushMatrix();
      translate(75+i*100, 0+j*100);
      rotate(radians(45));
      fill(c[0]);
      rect(19, 80, 2, 30);
      fill(c[1]);
      ellipse(20, 25, 25, 25);
      fill(c[2]);
      ellipse(20, 50, 25, 25);
      fill(c[3]);
      ellipse(20, 75, 25, 25);
      popMatrix();
    }
  }
}
