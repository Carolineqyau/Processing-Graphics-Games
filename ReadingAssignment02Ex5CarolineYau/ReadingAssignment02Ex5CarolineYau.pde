//Caroline Yau
//Reading Assignment 2

//Exercise #5

float rectX;
float rectY;
float srectY;
float lrectY;
float col;

void setup(){
  size(500, 500);
  rectX = random(width);
  rectY = random(height);
  srectY = random(0, 250);
  lrectY = random(250,500);
  col = random(255);
}

void draw(){
  background(0);
  
  if (mousePressed){
    stroke(0, 0, 255);
    fill(0, 0, 255);
    rect(mouseX, mouseY, 40, 40);
  }
  
  if (mouseY > 250){
    stroke(col);
    fill(col);
    rect(rectX, lrectY, 30, 30);
    rectX = rectX + random(-2,2);
    lrectY = lrectY + random(-2,2);
  }
  
  else if (mouseY < 250){
    stroke(col);
    fill(col);
    rect(rectX, srectY, 30, 30);
    rectX = rectX + random(-2,2);
    srectY = srectY + random(-2,2);
  }

  if (mouseX < 100 || mouseX > 400){
    stroke(255, 0, 0);
    fill(255, 0, 0);
    rect(225, 225, 20, 20);
    rect(225, random(500), 50, 50);
    rect(random(100,400), random(100,400), 50, 50);
  }
  
  else if (mouseX > 100 && mouseX < 400){
    stroke(255);
    line(100, 0, 100, height);
    line(80, 0, 80, height);
    line(60, 0, 60, height);
    line(40, 0, 40, height);
    line(20, 0, 20, height);
    line(480, 0, 480, height);
    line(460, 0, 460, height);
    line(440, 0, 440, height);
    line(420, 0, 420, height);
    line(400, 0, 400, height);    
  }
}
