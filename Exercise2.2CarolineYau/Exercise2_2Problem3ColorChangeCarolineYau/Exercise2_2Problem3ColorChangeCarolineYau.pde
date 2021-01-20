//Caroline Yau
//Exercise 2.2 In Motion

//Program 3. Color Change
//Fried Egg

int time1 = 1000;
int time2 = 2000;
int time3 = 3000;
int time4 = 4000;

int currentTime; 
int passedTime; 
int savedTime = 0;

void setup(){
  size(500, 500);
}

void draw(){
  background(#c8b29f);
  currentTime = millis();
  passedTime = currentTime - savedTime;
  noStroke();
  smooth();

  pushMatrix(); //draw handle
  translate(-150,330);
  rotate(radians(-45));
  fill(#2d2922);
  rect(310, 370, 60, 170, 7); 
  fill(#ad8e6f);
  rect(310, 370, 60, 40, 7);
  popMatrix();
  
  fill(#685640); //draw pan
  ellipse(250, 250, 300, 300);
  fill(#5b4a39);
  ellipse(250, 250, 285, 285);
  fill(#7b6955);
  ellipse(250, 250, 200, 200);
  
  if (passedTime < time1){
    fill(#f7f2ea, 100); //egg white 0
  }
  if ((passedTime > time1) && (passedTime < time2)){
    fill(#f8f3ea); //egg white 1
  }
  if ((passedTime > time2) && (passedTime < time3)){
    fill(#f0e0c5); //egg white 2
  }
  if ((passedTime > time3) && (passedTime < time4)){
    fill(#181818); //egg white 3
  }
  beginShape(); //draw egg white
  curveVertex(180, 250);
  curveVertex(190, 210);
  curveVertex(240, 200);
  curveVertex(270, 180);
  curveVertex(310, 200);
  curveVertex(315, 230);
  curveVertex(275, 260);
  curveVertex(230, 305);
  curveVertex(175, 280);
  curveVertex(170, 240);
  curveVertex(160, 260);
  endShape();
  
  if (passedTime < time1){
    fill(#fed53c); //egg yolk 0
  }
  if ((passedTime > time1) && (passedTime < time2)){
    fill(#fec567); //egg yolk 1
  }
  if ((passedTime > time2) && (passedTime < time3)){
    fill(#fcd07e); //egg yolk 2
  }
  if ((passedTime > time3) && (passedTime < time4)){
    fill(#594838); //egg yolk 3
  }
  
  ellipse(215, 255, 50, 50); //draw egg yolk
  
  if (passedTime > time4){
    savedTime = millis(); //reset
  }
}
