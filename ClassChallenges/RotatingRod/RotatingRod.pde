int x = 0;
int y = 0;

void setup(){
  size(500, 500);
  colorMode(HSB, 500);
}

void draw(){
  background(0, 0, 500);
  pushMatrix();
  rotate(radians(45));
  translate(-50,0);
  noStroke();
  //rod from (0,0) to (width + length, height + thickness);
  fill(frameCount, 500, 500);
  rect(x-10, y, 50, 20);
  popMatrix();
  x++;
  if (x>800){
    x=0;
  }
  //rotating rod;
  pushMatrix();
  translate(width/2, height/2);
  rectMode(CENTER);
  rotate(radians(x));
  fill(frameCount, 500, 500);
  rect(0, 0, 100, 20);
  popMatrix();

}
