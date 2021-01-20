void setup(){
  size(400, 400);
}

void draw(){
  for (int x = 20; x <= 380; x+=10) {
    if (x <= 200) {
      line(x, 0, x+10, 400);
  } else {
      line(x, 0, x-10, 400);
  }
 }
}
