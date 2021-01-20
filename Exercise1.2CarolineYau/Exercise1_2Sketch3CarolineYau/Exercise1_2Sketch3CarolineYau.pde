//Caroline Yau
//Exercise 1.2 Draw it!

//Sketch 3 Brick Wall

void setup(){
  size(250, 200);
}

void draw(){
  background(242, 203, 117);
  for (int j=1; j<=16; j++){
    for (int i=1; i<=16; i++){
      if ((j==1)||(j==5)||(j==9)||(j==13)){
        fill(224, 74, 36);
      } 
      else {
        fill(196, 95, 61);
      }
      rect(10+i*13,10+j*10,15,10);
    }
  }
}
