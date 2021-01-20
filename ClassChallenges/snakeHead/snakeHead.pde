//Mouse Released Snake
int brushSize;
void setup(){
  size(500, 500);
  brushSize = 30;
}

void draw(){
  background(0);
  
}
void mouseReleased(){
  fill(0, 0, 255);
  ellipse(mouseX, mouseY, brushSize, brushSize);
  snakeFace(5, 10);
}

void snakeFace(int x, int y){
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 5, 10);
  ellipse(mouseX+7, mouseY, 5, 10);
}
