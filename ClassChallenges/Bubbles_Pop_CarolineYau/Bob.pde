class Bob{
  float xpos;
  float ypos;
  float xspeed;
  boolean touch;
  
  Bob(float tempX,  float tempY, float tempXspeed){
    xpos = tempX;
    ypos = tempY;
    xspeed = tempXspeed;
  }
  void display(float mx, float my){
    stroke(0);
    fill(#FFFF00);
    rectMode(CENTER);
    xpos = mx;
    ypos = my;
    rect(mx, my, 50, 50);
    fill(0);
    ellipse(mx-10, my-10, 10, 10);
    ellipse(mx+10, my-10, 10, 10);
    rect(mx, my+10, 20, 10);
  }
  
  void crush(Bubble theBubble){
    if(dist(theBubble.xpos, theBubble.ypos, xpos+25, ypos)< theBubble.bSize/2 &&
    dist(theBubble.xpos, theBubble.ypos, xpos-25, ypos) < theBubble.bSize/2 &&
    dist(theBubble.xpos, theBubble.ypos, xpos, ypos+25) < theBubble.bSize/2 &&
    dist(theBubble.xpos, theBubble.ypos, xpos, ypos-25) < theBubble.bSize/2){
      theBubble.xpos = random(width);
      theBubble.ypos = random(height);
      theBubble.bSize = 150;
    }
  }
}
