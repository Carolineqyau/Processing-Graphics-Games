//Caroline Yau
//Exercise 2.2 In Motion

//Program 2. Timing millis()
//Flying Balloons

int x1 = 90;
int x2 = 180;
int x3 = 290;
int x4 = 400;
int x5 = 420;

float y1 = 400;
float y2 = 100;
float y3 = 300;
float y4 = 500;
float y5 = 80;

int time = 5000;
int currentTime;
int passedTime;
int savedTime = 0;

void setup(){
  size(500, 500);
}

void draw(){
  background(#d8f2f3);
  noStroke();
  currentTime = millis();
  passedTime = currentTime - savedTime;
  fill(#ff7a70); //red balloon 1
  ellipseMode(CENTER);
  ellipse(x1, y1, 100, 150);
  rect(x1-2, y1, 4, 200);
  fill(#ffef8b); //yellow balloon 2
  ellipse(x2, y2, 100, 150);
  rect(x2-2, y2, 4, 200);
  fill(#e2aef9); //purple balloon 3
  ellipse(x3, y3, 100, 150);
  rect(x3-2, y3, 4, 200);
  fill(#d1fb4c); //green balloon 4
  ellipse(x4, y4, 100, 150);
  rect(x4-2, y4, 4, 200);
  fill(#1e4fa8); //blue balloon 5
  ellipse(x5, y5, 100, 150);
  rect(x5-2, y5, 4, 200);
  
  if (passedTime < time){
    y1 -= random(1,5);
    y2 -= random(1,5);
    y3 -= random(1,5);
    y4 -= random(1,5);
    y5 -= random(1,5);
  }
  if (passedTime > time){
    y1 = random(500, 800);
    y2 = random(500, 800);
    y3 = random(500, 800);
    y4 = random(500, 800);
    y5 = random(500, 800);
    savedTime = millis();
  }
}
