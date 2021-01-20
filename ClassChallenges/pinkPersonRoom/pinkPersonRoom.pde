//person
float x;
float y;
color c = color(255);

void setup(){
  size(500, 500);
  //background(255);
  x = random(width);
  y = random(height);
  //colorMode(HSB);
}

void draw(){
  background(c);
  person();
  if (x < 0){
    c = color(random(255), random(255), random(255));
    x = width;
  } else if (x > width){
    c = color(random(255), random(255), random(255));
    x = 0;
  } else if (y < 0){
    c = color(random(255), random(255), random(255));
    y = height;
  } else if (y > height){
    c = color(random(255), random(255), random(255));
    y = 0;
  }
}

void person(){
  noStroke();
  fill(255, 0, 255);
  ellipse(x, y, 30, 30);
  triangle(x, y, x-20, y+45, x+20, y+45);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y -= 5;
    } else if (keyCode == DOWN) {
      y += 5;
    } else if (keyCode == LEFT) {
      x -= 5;
    } else if (keyCode == RIGHT) {
      x += 5;
    }
  }
}
