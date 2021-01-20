int x1 = 100;
int x2 = 100;
int spacing = 50;

void setup() {
  size (400, 500);
}

void draw() {
  background(255);
  for (int i = 0; i < 5; i++) {
    fill(255, 0, 0, 100);
    noStroke();
    ellipse(x2+spacing*i, height/2, 50, 50);
    rect(x2, height/2-40, 8, 25);
  }
  x2++;
  for (int i = 0; i < 5; i++) {
    fill(0, 255, 0, 100);
    noStroke();
    ellipse(x1+spacing*i, height/2, 50, 50);
    rect(x1, height/2-40, 8, 25);
  }
  x1--;
  if ((x1 == -250) || (x2 == 750)) {
    x1 = 400;
    x2 = -250;
  }
  
}
