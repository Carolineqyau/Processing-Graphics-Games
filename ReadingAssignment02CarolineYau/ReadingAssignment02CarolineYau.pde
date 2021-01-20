//Caroline Yau
//Reading Assignment 2

//Exercise #2
float circleX = 0;

void setup() {
  size(640,360);
}

void draw() {
  background(255);
  
  //Drawing the circle
  stroke(0);
  fill(175);
  ellipse(circleX, height/2, 40, 40);
  
  //Moving the circle
  circleX += 3;
  
  //If the circle extends past the right border, reappear from the left
  if (circleX >= 400) {
    circleX = -40;
  }
}

//Exercise #3
void setup(){
  size(300, 300);
  fill(0);
  noLoop();
}

void draw(){
  ellipse(width/2, height/2, 60, 60);
}

//Exercise #5
float rectX;
float rectY;

void setup(){
  size(500, 500);
  rectX = random(width);
  rectY = random(height);
}

void draw(){
  background(0);
  if (mouseX < 100 || mouseX > 400){
    line(100, 0, 100, height);
    line(80, 0, 80, height);
    line(60, 0, 60, height);
    line(40, 0, 40, height);
    line(20, 0, 20, height);
    line(380, 0, 380, height);
    line(360, 0, 360, height);
    line(340, 0, 340, height);
    line(320, 0, 320, height);
    line(300, 0, 300, height);  
  }
  
  else if (mousePressed){
    rect(rectX, rectY, 10, 10);
    rectX = rectX + random(-2,2);
    rectY = rectX + random(-2,2);
  }
  
  else if (mouseX > 100 && mouseX < 400){
    rect(width/2, height/2, 50, 50);
  }
}
    
    
