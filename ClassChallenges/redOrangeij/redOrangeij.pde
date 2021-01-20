void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  for (int j=0; j<12; j++){
    for (int i=0; i<13; i++){
      if ((j==0)||(j==5)||(j==11)||(i==0)||(i==6)||(i==12)){
        fill(255,0,0);
      }
      else{
        fill(255,162,0);
      }
      int x = i*25+50;
      int y = j*25+50;
      ellipse(x,y,20,20);
    }
  }
}
