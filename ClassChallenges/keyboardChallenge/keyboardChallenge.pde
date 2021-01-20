//Caroline Yau
//Keyboard Challenge

//object names

Bob myBob;
Rect[] myRect = new Rect [20];

void setup(){
  size(650, 400);
  colorMode(HSB);
  //constructor
  myBob = new Bob(0, height);
  for (int i=0; i<20; i++){
    myRect[i] = new Rect(color((i*20), 255, 255), i*50, 10, random(1,2));
  }
}

void draw(){
  //basic functions
  background(0);
  myBob.display();
  for (int i=0; i<20; i++){
    //if ((myRect[i].ypos > myBob.y){   
    if((myRect[i].xpos+10 > myBob.x)&& (myRect[i].ypos+10 > myBob.y) && (myRect[i].xpos-10 < myBob.x+40) && (myRect[i].ypos-10 < myBob.y + 40)){
      myBob.x = 0;
    }
    myRect[i].move();
    myRect[i].display();
  }
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == RIGHT){
      myBob.x += 3;
    }
    else if(keyCode == LEFT){
      myBob.x -= 3;
    }
  //else{
  }
}  
