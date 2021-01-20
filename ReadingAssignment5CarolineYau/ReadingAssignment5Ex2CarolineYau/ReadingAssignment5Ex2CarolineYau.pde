//Caroline Yau
//Reading Assignment 5

//Exercise 2
void setup(){
  size(500, 500);
}

void draw(){
  background(255);
  for (int i=1; i<10; i++){
    cir(50*i, 50*i, i);
  }
}

void cir(int x, int y, int c){
  noStroke();
  if(c%3==0){
    fill(255, 0, 0);
  }
  else if(c%2==0){
    fill(0, 255, 0);
  }
  else {
    fill(0, 0, 255);
  }
  ellipse(x, y, 50, 50);
}
