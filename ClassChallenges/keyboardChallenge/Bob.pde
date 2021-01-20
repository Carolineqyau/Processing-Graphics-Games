class Bob{
  float x;
  float y;
  
  Bob(float tempX, float tempY){
    x = tempX;
    y = tempY;
  }
  
  void display(){
    stroke(0);
    fill(#FFFF00);
    rectMode(CORNER);
    rect(x, y-40, 40, 40);
    fill(0);
    ellipseMode(CENTER);
    ellipse(x+15, y-25, 8, 8);
    ellipse(x+30, y-25, 8, 8);
    rect(x+13, y-15, 18, 6);
  }
  //void keyPressed(){
  //  if(key == CODED){
  //    if(keyCode == RIGHT){
  //      x += 1;
  //    }
  //    else if(keyCode == LEFT){
  //      x -= 1;
  //    }
  //  //else{
  //  }
  //}  
}  
  
