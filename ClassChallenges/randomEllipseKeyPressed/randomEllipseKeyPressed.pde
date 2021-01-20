float x;
float y;
float r ;
float calculateArea = 0;

void setup(){
  size(500,500);
  background(255);
}

void draw(){
   
}

float area(){
  calculateArea += 2*PI*r;
  return calculateArea;
}

void keyPressed(){
  noStroke();
  fill(0);
  x = random(width);
  y = random(height);
  r = random(30, 100);
  fill(255);
  rect(0, 0, 200, 35);
  stroke(0);
  fill(0);
  text("Pay Jack: $" + area(), 20, 20);
  ellipse(x, y, r, r);
  
}
