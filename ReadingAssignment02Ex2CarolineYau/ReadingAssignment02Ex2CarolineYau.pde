//Caroline Yau
//Reading Assignment 2

//Exercise #2
float circleX = 0;

void setup() {
  size(640,360);
}

void draw() {
  background(255);
  
  //Drawing the circle
  stroke(0);
  fill(175);
  ellipse(circleX, height/2, 40, 40);
  
  //Moving the circle
  circleX += 3;
  
  //If the circle extends past the right border, reappear from the left
  if (circleX >= 680) {
    circleX = -40;
  }
}
