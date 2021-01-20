//Caroline Yau
//Exercise 1.2 Draw it!

//Sketch 1

void setup(){
  size(160, 160);
}

void draw(){
  for (int i=0; i<=15; i++){
    line(10*i, height/(i+1), 10*i, height);
  }
}
