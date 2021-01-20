void setup(){
  size(400, 400);
}

void draw(){
  for (int x = 180; x <= 220; x+=10) {
    line(x, 0, x, 400);
  }
}
