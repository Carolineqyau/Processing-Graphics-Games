//Caroline Yau
//Step by Step Game

//Step 1. Name my object
Rect [] myRect = new Rect [10];
Bob myBob;

//Step 2. Use the constructor
void setup(){
  size(800, 400);
  color tempC;
  int tempT;
  for (int i=0; i<10; i++){
    if (i%2 == 0){
      tempC = #FF0000;
      tempT = 0;
    }
    else {
      tempC = #00FF00;
      tempT = 1;
    }
    myRect[i] = new Rect(50+i*50, 0, tempC, random(0.3, 1), 20, tempT);
  }
  myBob = new Bob(0, height-50, 50, #FFFF00, 1);
}

void draw(){
  background(0);
  //Step 3. Use functions!
  myBob.display();
  for (int i=0; i<10; i++){
    myRect[i].display();
    myRect[i].move();
    myBob.collide(myRect[i]);
  }
}

void keyPressed(){
  if (keyCode == RIGHT){
    myBob.move(1);
  }
  else if (keyCode == LEFT){
    myBob.move(-1);
  }
}

void mousePressed(){
  for (int i=0; i<10; i++){
    myRect[i].clicks(mouseX, mouseY);
  }
}
