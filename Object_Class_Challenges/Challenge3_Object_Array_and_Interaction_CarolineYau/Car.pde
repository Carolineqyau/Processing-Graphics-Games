class Car { 
  //Step1: attributes:
  color c;
  float xpos;
  float ypos;
  float yspeed;
  
  boolean mouse;

  // Step 2: The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempYspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    yspeed = tempYspeed;
  }
//Step 3: functions:
  void display() {
    stroke(0);
    fill(c);
    if (mouse==true){
      ypos = 0;
    }
    //else{
      
    //}
    rectMode(CENTER);
    rect(xpos,ypos,50,20);
  }

  void drive() {
    ypos = ypos + yspeed;
    if (ypos > height) {
      ypos = 0;
    }
    if (ypos < 0) {
      ypos = height;
    }
  }
  void crush(int mx, int my) { 
    // Left edge is x, Right edge is x + w
    if ((mx > xpos-25 && mx < xpos + 25) && (my > ypos-10 && my < ypos + 10)) {
      mouse = true;
    } else {
      mouse = false;
    }
  }
}
