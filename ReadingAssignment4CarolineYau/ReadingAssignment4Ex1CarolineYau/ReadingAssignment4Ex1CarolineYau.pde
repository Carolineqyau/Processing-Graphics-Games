//Caroline Yau
//Reading Assignment 4

//Exercise 1

int [] data = { 19, 40, 75, 76, 90 };

void setup(){
  size(100, 100);
}

void draw(){
  for(int i = 0; i < data.length; i++){
    line(data[i], 0, data[i], 100);
  }
}
