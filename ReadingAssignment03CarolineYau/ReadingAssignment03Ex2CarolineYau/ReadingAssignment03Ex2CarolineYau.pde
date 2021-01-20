void setup(){
  size(400, 400);
}

void draw(){
  int x = 180;
  while (x <= 220) {
    line(x, 0, x, 400);
    x += 10;
  }
}
