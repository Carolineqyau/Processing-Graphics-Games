//Caroline Yau
//Exercise 3.2 Free Patterns

//3. Changing Eye Colors with Changing Lighting

int i=0;
color[] s = new color [9];
color[] c = new color [9];
color[] l = new color [9];
int time = 100;
int currentTime;
int passedTime;
int savedTime = 0;

void setup(){
  size(500, 500);
  rectMode(CENTER);
  c[0] = #a98352;
  c[1] = #866f52;
  c[2] = #4b3a2a;
  c[3] = #b8c5d4;
  c[4] = #859da3;
  c[5] = #8dae70;
  c[6] = #d9ee98;
  c[7] = #efd4a1;
  c[8] = #deb46f;
  l[0] = #d8b582;
  l[1] = #b99d79;
  l[2] = #795d43;
  l[3] = #deeffe;
  l[4] = #c1dae0;
  l[5] = #bde0a0;
  l[6] = #f7f6b2;
  l[7] = #f3e8c5;
  l[8] = #efc67e;
  s[0] = #875b2f;
  s[1] = #5b4a34;
  s[2] = #382615;
  s[3] = #7c8fa4;
  s[4] = #667a7e;
  s[5] = #71875e;
  s[6] = #a5c370;
  s[7] = #c09260;
  s[8] = #9e7a3e;
}

void draw(){
  currentTime = millis();
  passedTime = currentTime - savedTime;

  background(#fff6ec);
  stroke(0); //reset
  strokeWeight(2);
  fill(#ecf0f6); //eyeball
  arc(250, 250, 450, 300, -PI, 0); //eye shape
  arc(250, 250, 450, 300, 0, PI);

  if (passedTime > time*(i+1)){
    i = i+1;
  }
  if (i == 9) {
    i=0;
    savedTime = millis();
  }
  
  stroke(0); //reset
  fill(c[i]); //eye color
  ellipse(250, 250, 300, 300);
  
  noStroke();
  fill(s[i]); //pupil shade
  ellipse(250, 250, 140, 140);
  
  pushMatrix(); //hightlight rotation
  translate(250, 250); //rotate around center
  rotate(radians(-40)); //starting position
  fill(l[i]); //lighting
  for (int j=0; j<5; j++){ //make 5 rectangles
    rect(0, 110, 20, 40);
    rotate(radians(20));    
  }
  popMatrix(); //reset
  
  fill(0);
  ellipse(250, 250, 100, 100); //pupil
  
  //blendMode(MULTIPLY);
  //fill(#b0b2b5);
  //beginShape();
  //arc(250, 250, 450, 300, -PI, 0);//eyeball shadow
  //noFill();
  //arc(250, 250, 450, 180, -PI, 0);
  //endShape();
  
  blendMode(SCREEN);
  fill(l[i]);
  ellipse(175, 175, 50, 50);//highlight
  blendMode(NORMAL);
}
