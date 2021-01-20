void setup(){
  size(400, 400);
}

void draw(){
  noFill();
  for (int y = 10; y < 390; y+=10) {
    for (int x = 10; x < 390; x+=10) {
      rect(x, y, 10, 10);
    }
  }
}
