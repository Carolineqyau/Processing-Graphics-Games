//drawing tool
int size;
color c = color(255, 255, 255);
void setup(){
  size(600, 400);
  size = 10;
  background(0);
}

void draw(){
  
}
void mousePressed(){
  noStroke();
  fill(c);
  ellipse(mouseX, mouseY, size, size);
}

void mouseDragged(){
  fill(c);
  ellipse(mouseX, mouseY, size, size);
}

void keyPressed(){
  if(key == 'c') {//clear    
    background(0);  
  } else if (key == 'r') { //red    
    c = color(255, 0, 0);  
  } else if (key == 'g') { //green    
    c = color(0, 255, 0);  
  } else if (key == 'b') { //blue    
    c = color(0, 0, 255);  
  }
  if(key == 'a'){ //decrease size
    size--;
  } else if (key == 'd'){
    size ++; //increase size
  }
}
