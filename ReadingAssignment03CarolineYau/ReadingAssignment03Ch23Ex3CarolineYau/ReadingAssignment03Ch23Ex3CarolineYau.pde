void setup(){
  size(200, 200);
}

void draw(){
  int s = second();
  int m = minute();
  int h = hour();
  line(20+h, 40, 20+h, 60);
  line(20+m, 90, 20+m, 110);
  line(20+s, 140, 20+s, 160);
}
