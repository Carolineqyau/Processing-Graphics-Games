class Ball {       
 
   //Step 1: Attributes (from GLOBAL VARIABLES)
  float x = 0;
  float y = 0;
  float speedX = 4;
  float speedY = 9;
  color cBall;
    
  //Step 2: THE CONSTRUCTOR 
  Ball(float _x, float _y, color cB){                                                                    
    x = _x;  
    y = _y; 
    cBall=cB;
  }
  
   //Step 3: FUNCTIONS
   
   void run(){ // New comprehensive function called run that lumps them all together in one move.
     move();
     bounce();
     display();
   }
   
 void move() { 
  x = x + speedX;
  y = y + speedY;
}

 void bounce(){ 
  if ((x > width) || (x < 0)){
  speedX = speedX * -1;
  }
  if ((y > height) || (y < 0)){
    speedY = speedY * -1;
  } 
  }
 
 
  void display () { 
    fill(cBall);
    ellipse (x,y,20,20);  
  }
 }
