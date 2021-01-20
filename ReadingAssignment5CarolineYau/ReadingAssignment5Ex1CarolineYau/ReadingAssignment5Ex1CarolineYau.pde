//Caroline Yau
//Reading Assignment 5

//Exercise 1
void setup(){
  size(500, 500);
}

void draw(){
  background(255);
  for (int i=1; i<10; i++){
    cir(50*i, 50*i);
  }
}

void cir(int x, int y){
  fill(0);
  ellipse(x, y, 50, 50);
}
