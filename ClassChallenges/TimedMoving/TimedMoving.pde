float x1 = 100;
float x2 = 100;
float y1= 250;
float y2 = 250;

int time1 = 3000; //interval 3 seconds
int time2 = 6000; //interval 6 seconds
int time3 = 9000; //interval 9 seconds

int currentTime;
int passedTime;
int savedTime = 0; //restart every time interval is achieved to start counting again

void setup(){
  size(500, 500);
  noStroke();
}
//updown left right right left, white red blue, changes speed
void draw(){
  currentTime = millis(); //has to be declared inside draw
  passedTime = currentTime - savedTime;
  if (passedTime < time1){
    background(255);
    fill(255, 0, 0);
    ellipse(100, y1, 50, 50);
    rect(200, y2, 50, 50);
    y1 += 0.5;//move ellipse down
    y2 -= 0.5;//move rectangle up
  }
  if ((passedTime > time1) && (passedTime < time2)){
    background(255, 0, 0);
    fill(255);
    ellipse(x1, 300, 50, 50);
    rect(x2+100, 300, 50, 50);
    x1 += 0.5;
    x2 -= 0.5;
  }
  if ((passedTime > time2) && (passedTime < time3)){
    background(0, 0, 255); 
    fill(255, 0, 0);
    ellipse(x1+100, 300, 50, 50);
    rect(x2+150, 300, 50, 50);
    x1 -= 0.5;
    x2 += 0.5;
  }
  if (passedTime >= time3){
    x1 = 100; //reset initial values
    x2 = 100;
    y1 = 250;
    y2 = 250;
    savedTime = millis();
  }
}
