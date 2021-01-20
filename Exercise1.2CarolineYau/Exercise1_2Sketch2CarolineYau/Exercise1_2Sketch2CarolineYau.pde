//Caroline Yau
//Exercise 1.2 Draw it!

//Sketch 2 Target

void setup(){
  size(200, 200);
}

void draw(){
  noFill();
  for (int i=1; i<=16; i++){
    ellipse(width/2, height/2, i*10, i*10);
  }
}
