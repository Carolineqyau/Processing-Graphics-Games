//01. drawing 
//Array of Colors
int size;
color c[] = {color(0, 10, 10), color(1, 10, 10), color(2, 10, 10), color(3, 10, 10), color(4, 10, 10), color(5, 10, 10), color(6, 10, 10), color(7, 10, 10), color(8, 10, 10), color(9, 10, 10)};

void setup(){
  size(500, 500);
  size = 5;
  background(0);
  colorMode(HSB, 10);
}

void draw(){
  noStroke();
  //fill(color(0, 10, 10));
  //fill(c[5]);
  //ellipse(250, 250, 100, 100);
}

void mousePressed(){
  noStroke();
  //fill(c[1]);
  fill(color(0, 10, 10));
  ellipse(mouseX, mouseY, size, size);
}

void mouseDragged(){
  //for (int i=1; i<10; i++){
    //fill(c[i]);
  //}
  //i = int(mouseX/500)
  //if (((width - mouseX)!=0)||((height - mouseY)!=0)){
  //  for(int i=0; i<10; i++){
  //    fill(color(i, 10, 10));
  //  }
  fill(colour
    
  }
  //ellipse(mouseX, mouseY, size, size);
  colour(mouseX, mouseY, 
}

void colour (int x, int y, int i){
  for 
  fill(c[i]);
  ellipse(x, y, size, size);
  
}
    
    
