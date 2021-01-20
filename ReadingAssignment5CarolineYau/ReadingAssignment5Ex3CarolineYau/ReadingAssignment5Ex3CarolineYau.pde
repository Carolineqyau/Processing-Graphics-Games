//Caroline Yau
//Reading Assignment 5

//Exercise 3
void setup(){
  size(600, 600);
}

void draw(){
  //grid
  background(#f6f0e8);
  for (int j=0; j<3; j++){
    for (int i=0; i<3; i++){
      line(200*(i+1), 0, 200*(i+1), 600);
      line(0, 200*(i+1), 600, 200*(i+1));
      chair(100+200*i, 100+200*j, i, j); 
    }
  }
}

void chair(int x, int y, int b, int l){ //b for back, l for legs
  noStroke();
  //strokeWeight(5);
  //stroke(#593811);
  fill(#593811);
  if (l%3==0){
    //legs
    rect(x-60, y, 5, 60);
    rect(x+30, y, -5, 60);
    fill(#7f501c);
    rect(x+60, y+30, -5, 60);
    rect(x-30, y+30, 5, 60);
  }
  else if (l%2==0){
    //leg
    rect(x-60, y, 5, 50);
    rect(x+30, y, -5, 50);
    fill(#7f501c);
    rect(x+60, y+30, -5, 50);
    rect(x-30, y+30, 5, 50);
  }
  else{
    //leg
    rect(x-60, y, 5, 40);
    rect(x+30, y, -5, 40);
    fill(#7f501c);
    rect(x+60, y+30, -5, 40);
    rect(x-30, y+30, 5, 40);
  }
  
  if (b%3==0){
    //back
    fill(#825838);
    for (int i=0; i<8; i++){
      rect(x-52+i*10, y-50, 4, 40);
      rect(x-60, y-10, 90, 5);
    }
    rect(x-60, y-50, 90, 5);
    fill(#7e501f);
    rect(x-60, y, 5, -50);
    rect(x+30, y, -5, -50);
    
  }
  else if (b%2==0){
    //back
    stroke(#825838);
    strokeWeight(5);
    line(x-57, y-38, x+27, y-10);
    line(x-57, y-10, x+27, y-38);
    noStroke();
    rect(x-60, y-10, 90, 5);
    fill(#865a21);
    rect(x-60, y-40, 90, 5);
    fill(#7e501f);
    rect(x-60, y, 5, -40);
    rect(x+30, y, -5, -40);
  }
  else {
    //back
    fill(#825838);
    rect(x-60, y-10, 90, 5);
    rect(x-60, y-20, 90, 5);
    rect(x-60, y-30, 90, 5);
    fill(#7e501f);
    rect(x-60, y, 5, -30);
    rect(x+30, y, -5, -30);
  }

  //seat
  fill(#825838);
  quad(x-60, y, x+30, y, x+60, y+30, x-30, y+30);
  
  //seatshading
  fill(#633912);
  rect(x-30, y+30, 90, 5); //front
  strokeWeight(5);
  stroke(#4e280a);
  line(x-58, y+2, x-30, y+30); //side

  strokeWeight(1); //reset
}
