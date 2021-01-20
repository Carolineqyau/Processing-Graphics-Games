//CarolineYau
//Bubbles

Bubble [] myBubbles = new Bubble [10];
Bob myBob;

void setup(){
  size(800, 600);
  colorMode(HSB);
  for (int i=0; i<10; i++){
    myBubbles[i] = new Bubble(color(i*25, 255, 255), random(width), random(height), random(0.25), 150);
  }
  myBob = new Bob(mouseX, mouseY, 5);
}

void draw(){
  background(0);
  for(int i=0; i<10; i++){
    myBubbles[i].display();
    myBubbles[i].grow();
  }
  myBob.display(mouseX, mouseY);
}

void mousePressed(){
  for (int i=0; i<10; i++){
    myBob.crush(myBubbles[i]);
  }
}
