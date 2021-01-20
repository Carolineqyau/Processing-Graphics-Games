//Caroline Yau
//Exercise 1.2 Draw it!

//Sketch 4

int x = 40;
int y = 40;
void setup(){
  size(400, 400);
}

void draw(){
  background(255, 248, 242);
  stroke(255, 245, 240);
  for (int i=0; i<5; i++){
    fill(158, 82, 38);
    ellipse(x+i*80, y, 50, 50);
    ellipse(x+i*80, height/2, 50, 50);
    ellipse(x+i*80, height-y, 50, 50);
    fill(235, 161, 127);
    ellipse(x*2+(i-1)*80, height/3, 50, 50);
    ellipse(x*2+i*80, height*2/3, 50, 50);
  }
}
