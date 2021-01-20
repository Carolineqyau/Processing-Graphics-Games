//Caroline Yau
//Reading Assignment 4

//Exercise 2

float[] sineWave;

void setup(){
  size(500, 500);
  sineWave = new float[width];
  for (int i = 0; i < sineWave.length; i++){
    float r = map(i, 0, width, 0, TWO_PI);
    sineWave[i] = abs(sin(r));
  }
}

void draw(){
  for (int i = 0; i < sineWave.length; i++){
    stroke(sineWave[i]*255, 255, 200);
    line(i, 0, i, height);
  }
}
