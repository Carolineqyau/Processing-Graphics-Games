//Caroline Yau
//Exercise 1.2 Draw it!

//Sketch 5 Dango

int x = 100;
void setup(){
  size(500,500);
}

void draw(){
  background(255, 252, 247);
  noStroke();
  for (int i=0; i<4; i++){
    fill(245, 233, 225);
    rect(x+i*100-5, 150, 10, 250);
    fill(250, 220, 229);
    ellipse(x+i*100, 120, 80, 80);
    fill(245, 238, 225);
    ellipse(x+i*100, 200, 80, 80);
    fill(225, 237, 216);
    ellipse(x+i*100, 280, 80, 80);
    fill(255);
    ellipse(x+i*100-15, 105, 10, 10);
    ellipse(x+i*100-15, 185, 10, 10);
    ellipse(x+i*100-15, 265, 10, 10);
  }
}
