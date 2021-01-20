void setup(){
  size(600, 400);
}

void draw(){
  background(0);
  for (int i = 1; i <= 10; i++){
  flower(50*i, 150, i);
  }
}

void flower(int x, int y, int c){
  if (c%2 == 0){
    fill(255, 0, 0);
  }
  else {
    fill(0, 0, 255);
  }
  noStroke();
  ellipse(x+13, y-10, 20, 20);
  ellipse(x, y-30, 20, 20);
  ellipse(x-13, y-10, 20, 20);
  stroke(0, 255, 0);
  line(x, y, x, y+100);
}
