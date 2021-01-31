//00. counting down
//millis and colors

color back[] = {#39368a, #ba4f54, #2d51ca, #b956cb, #254266, #4846ca};
color ball[] = {#bb506c, #2d51ca, #b956cb, #254266, #6fc69e, #ac6ed7};
int time1 = 1000;
int time2 = 2000;
int time3 = 3000;
int time4 = 4000;
int time5 = 5000;
int time6 = 6000;
int currentTime;
int passedTime;
int savedTime = 0;

void setup(){
  size(500, 500);
  noStroke();
  
}

void draw(){
  currentTime = millis();
  passedTime = currentTime - savedTime;
  if (passedTime < time1){
    spot(width/2, height/2, 0, 0, 5);
  }
  else if ((time1 <= passedTime)&&(passedTime < time2)){
    spot(width/2, height/2, 1, 1, 4);
  }
  else if ((time2 <= passedTime)&&(passedTime < time3)){
    spot(width/2, height/2, 2, 2, 3);
  }
  else if ((time3 <= passedTime)&&(passedTime < time4)){
    spot(width/2, height/2, 3, 3, 2);
  }
  else if ((time4 <= passedTime)&&(passedTime < time5)){
    spot(width/2, height/2, 4, 4, 1);
  }
  else if ((time5 <= passedTime)&&(passedTime < time6)){
    spot(width/2, height/2, 5, 5, 0);
  }
  else {
    savedTime = millis();
  }
}
  
void spot(int x, int y, int c1, int c2, int t){
  background(back[c1]);
  fill(ball[c2]);
  ellipse(x, y, 200, 200);
  fill(back[c1]);
  textSize(80);
  textAlign(CENTER, CENTER);
  text(t, x, y);
}
