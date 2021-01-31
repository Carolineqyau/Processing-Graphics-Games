class White {       
 
   //Step 1: Attributes (from GLOBAL VARIABLES)
  float x1 = 0;
  float y1 = 0;
  float speedx = 4;
  float speedy = 9;
  color cWhite;
    
  //Step 2: THE CONSTRUCTOR 
  White(float xx, float yy, color cW){                                                                    
    x1 = xx;  
    y1 = yy; 
    cWhite=cW;
  }
  
   //Step 3: FUNCTIONS
   
   void run(){ // New comprehensive function called run that lumps them all together in one move.
     move();
     bounce();
     display();
   }
   
 void move() { 
  x1 = x1 + speedx;
  y1 = y1 + speedy;
}

 void bounce(){ 
  if ((x1 > width) || (x1 < 0)){
  speedx = speedx * -1;
  }
  if ((y1 > height) || (y1 < 0)){
    speedy = speedy * -1;
  } 
  }
 
 
  void display () { 
    fill(cWhite);
    ellipse (x1,y1,20,20);  
  }
 }
