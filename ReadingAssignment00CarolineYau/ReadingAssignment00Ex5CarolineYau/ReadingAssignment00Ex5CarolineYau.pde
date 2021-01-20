//Caroline Yau
//Reading Assignment

//Exercise 5

void setup(){
  size(400,400);
}

void draw(){
  strokeWeight(10);
  noFill();
  bezier(50,250,100,250,100,200,150,160);
  bezier(150,160,260,140,260,300,150,300);
  bezier(150,300,75,300,75,140,150,160);
  bezier(150,160,220,200,240,250,350,250);
}
