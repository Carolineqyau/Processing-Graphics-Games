//square shadows 

void setup(){
  size(600, 400);
  background(0);
}

void draw(){
  
}
//void mousePressed(){
//  stroke(0, 255, 0);
//  rect(mouseX, mouseY, 20, 20);
//}
void mousePressed(){
  background(0);
  fill(0, 255, 0);
  square(mouseX, mouseY, 30);
}

void mouseDragged(){
  stroke(0, 255, 0);
  noFill();
  square(mouseX, mouseY, 30);
}

void mouseReleased(){
  background(0);
  //fill(0);
  //rect(-1, -1, 601, 401);
  fill(0, 255, 0);
  square(mouseX, mouseY, 30);
}
