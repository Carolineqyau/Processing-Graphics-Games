class Bubble{
  color c;
  float xpos;
  float ypos;
  float bGrow;
  float bSize;
  
  Bubble(color tempC, float tempXpos, float tempYpos, float tempbGrow, float tempbSize){
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    bGrow = tempbGrow;
    bSize = tempbSize;
  }
  
  void display(){
    noStroke();
    fill(c);
    ellipse(xpos, ypos, bSize, bSize);
  }
  
  void grow(){
    bSize = bSize - bGrow;
    if(bSize < 50){
      bSize = 150;
      xpos = random(width);
      ypos = random(height);
    }
  }
}
  
