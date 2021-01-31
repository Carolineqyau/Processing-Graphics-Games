//Caroline Yau
//Exercise 4.2 Cool Colors

//2. LightSpots
//Using argument l to control the blend mode, and argument r to set the range for vibrations
int t=0;
int time = 1000;
int currentTime;
int passedTime;
int savedTime = 0;
color[][] c = {{#5e77bd, #8a67ca, #cd65df, #d551a1, #de483e, #f29460, #fa9827, #fac027, #fad817}, 
               {#81d7df, #65dfd3, #74eac1, #52f181, #4ef039, #abf557, #cbfd37, #e5fa26, #fffe3d}, 
               {#8289ff, #ffdf82, #82d1ff, #ffb882, #82fffa, #ff9d82, #82ffa4, #ff8482, #a8ff82}, 
               {#be999f, #cb9997, #d9aba2, #c39081, #d1a892, #d0a17e, #ccae8f, #ceba9e, #cbb88a}, 
               {#421812, #51281f, #5e2e1c, #674430, #784b25, #715737, #795c2a, #74643c, #a3925a}};
void setup(){
  size(500, 500);
}

void draw(){
  currentTime = millis();
  passedTime = currentTime - savedTime;
  background(255);
  blendMode(MULTIPLY);
  noStroke();
  for (int j=0; j<5; j++){
    for (int i=0; i<9; i++){
      spot(i, j, t, 5);
    }
  }
  if (passedTime > time*(t+1)){
    t = t+1;
  }
  if (t == 5) {
    t=0;
    savedTime = millis();
  }
}

void spot(int x, int y, int l, float r){
  if (l==0){
    blendMode(MULTIPLY);
  }
  else if (l==1){
    blendMode(EXCLUSION);
  }
  else if (l==2){
    blendMode(DIFFERENCE);
  }
  else if (l==3){
    blendMode(BLEND);
  }
  else if (l==4){
    blendMode(SUBTRACT);
  }
  fill(c[y][x]);
  ellipse(50+x*50+random(-r, r), 50+y*100, 100, 100);
}
