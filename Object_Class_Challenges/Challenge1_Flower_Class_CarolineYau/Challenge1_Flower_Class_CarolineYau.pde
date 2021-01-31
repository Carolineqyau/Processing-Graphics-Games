//Caroline Yau
//Challenge 1. Flower Class

Flower [] myFlowers = new Flower [9];

void setup() {
  size(600, 400);
  colorMode(HSB);
  for (int i=0; i<9; i++){
    myFlowers[i] = new Flower(color(i*28, 255, 255), 0, i*40, random(1,2));
  }
}

void draw(){
  background(0);
  for (int i = 0; i < 9; i++){
    myFlowers[i].crush(mouseX, mouseY);
    myFlowers[i].drive();
    myFlowers[i].display();
    //flower(50*i, 150, i);
  }
}
