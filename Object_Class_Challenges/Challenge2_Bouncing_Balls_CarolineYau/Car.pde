class Car { 
  //Step1: attributes:
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  boolean mouse;

  // Step 2: The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
//Step 3: functions:
  void display() {
    stroke(0);
    if (mouse==true){
      fill(#FF0000);
    }
    else{
      fill(c);
    }
    rectMode(CENTER);
    rect(xpos,ypos,50,20);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
    if (xpos < 0) {
      xpos = width;
    }
  }
  void crush(int mx, int my) { 
    // Left edge is x, Right edge is x + w
    if ((mx > xpos && mx < xpos + 31) && (my > ypos && my < ypos + 20)) {
      mouse = true;
    } else {
      mouse = false;
    }
  }
}
