class Score{
  float x;
  float y;
  float size;
  int number;
  
  Score(float tempx, float tempy, int tempSize, int tempnumber){
    x = tempx;
    y = tempy;
    size = tempSize;
    number = tempnumber;
  }
  
  void display(){
    fill(255);
    stroke(0);
    textSize(size);
    text(number, x, y);
    noStroke();
  }
  
  void increase(){
    number += 1;
  }
  
  void decrease(){
    number -= 5;
  }
  
}
  
