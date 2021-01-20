void setup(){
  size(100, 100);
}

void draw(){
  int s = second();
  if (s <= 2){
    rect(s+15, s+15, 10, 10);
  }
}
