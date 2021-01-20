//Caroline Yau
//Exercise 2.2 In Motion

//Program 4. Mouse Location
//Magnet

int x;
int y;

void setup(){
  size(500, 500);
}

void draw(){
  background(#f9f5ec);
  noStroke();
  fill(#a5856f); //box outline
  rect(95, 95, 310, 310, 5);
  fill(#937764); //box
  rect(100, 100, 300, 300, 5);
  
  fill(#7fa2bf);
  if((mouseX <= 100)&&(mouseY <= 100)){
    rect(100, 100, 25, 25, 5);
  }
  else if ((mouseX <= 100)&&(100 < mouseY)&&(mouseY < 375)){
    rect(100, mouseY, 25, 25, 5);
  }
  else if ((mouseX <= 100)&&(mouseY >= 375)){
    rect(100, 375, 25, 25, 5);
  }
  else if ((mouseX >= 375)&&(mouseY <= 100)){
    rect(375, 100, 25, 25, 5);
  }
  else if ((mouseX >= 375)&&(100 < mouseY)&&(mouseY < 375)){
    rect(375, mouseY, 25, 25, 5);
  }
  else if ((mouseX >= 375)&&(mouseY >= 375)){
    rect(375, 375, 25, 25, 5);
  }
  else if ((100 < mouseX)&&(mouseX < 375)&&(mouseY <= 100)){
    rect(mouseX, 100, 25, 25, 5);
  }
  else if ((100 < mouseX)&&(mouseX < 375)&&(mouseY >= 375)){
    rect(mouseX, 375, 25, 25, 5);
  }
  else{
    rect(mouseX, mouseY, 25, 25, 5);
  }
  fill(#a1c0d8);
  rect(mouseX - 25/2, mouseY - 25/2, 25, 25, 5);
}
