//Caroline Yau
//Exercise 4.2 Cool Colors

//1. Dangos
//changing the argument c could change the dango colors
int c;
int time = 1000;
int time2 = 2000;
int time3 = 3000;
int time4 = 4000;
int time5 = 5000;
int currentTime;
int passedTime;
int savedTime = 0;

void setup(){
  size (500, 500);
}

void draw(){
  currentTime = millis();
  passedTime = currentTime - savedTime;
  background(255, 252, 247);
  //smooth();
  for (int j=0; j<5; j++){
    for(int i=0; i<5; i++){
      pushMatrix();
      translate(75+i*100, 0+j*100);
      rotate(radians(45));
      dango(c, i);
      popMatrix();
    }
  }
  if (passedTime <= time){
    c = 250;
  }
  else if ((passedTime > time)&&(passedTime <= time2)){
    c = 200;
  }
  else if ((passedTime > time2)&&(passedTime <= time3)){
    c = 150;
  }
  else if ((passedTime > time3)&&(passedTime <= time4)){
    c = 180;
  }
  else if ((passedTime > time4)&&(passedTime <= time5)){
    c = 220;
  }
  else if (passedTime > time5){
    savedTime = millis();
  }
}

void dango(int c, int ii){
  //colorMode(HSB, 150);
  fill(245, 233, 225);
  //fill(c+5*ii, 100, 150);
  rect(19, 80, 2, 30);
  
  fill(c, 220-10*ii, 229-20*ii);
  //fill(c-ii, 100, 150);
  ellipse(20, 25, 25, 25);
  
  fill(245-20*ii, c, 225-10*ii);
  //fill(c+2*ii, 100, 150);
  ellipse(20, 50, 25, 25);
  
  fill(c, 237-20*ii, 216-10*ii);
  //fill(c-4*ii, 100, 150);
  ellipse(20, 75, 25, 25);
  //colorMode(RGB);
}
  
