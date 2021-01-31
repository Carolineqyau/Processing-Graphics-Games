//03. arrays drop
//x, y, color arrays

float x;
float y;

void setup(){
  size(500, 500);
  x = random(width);
  y = 0;
}

void draw(){
  
  coin(x, y);
  y++;
  
}

void coin(float a, float b){
  ellipse(a, b, random(5, 10), random(5, 10));
}
