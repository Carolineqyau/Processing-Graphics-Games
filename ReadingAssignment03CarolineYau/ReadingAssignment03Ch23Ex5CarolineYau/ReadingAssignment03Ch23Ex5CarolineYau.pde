void setup(){
  size(400, 400);
}

void draw(){
  int d = day();
  int m = month();
  if ((m == 10) && (d == 31)){
    fill(250, 162, 62);
    ellipseMode(CENTER);
    ellipse(200, 200, 350, 300);
  }
    if ((m == 2) && (d == 14)){
    fill(255, 0, 0);
    noStroke();
    beginShape();
    vertex(200, 20);
    bezierVertex(200, 10, 180, 20, 200, 160);
    vertex(200, 20);
    bezierVertex(200, 10, 20, 20, 200, 160);
  }
}
