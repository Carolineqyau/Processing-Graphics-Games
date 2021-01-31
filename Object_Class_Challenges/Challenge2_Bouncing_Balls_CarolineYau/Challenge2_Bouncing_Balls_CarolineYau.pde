//Caroline Yau
//Challenge 2. Bouncing Balls

Car [] myCars = new Car [20];
Ball myBall;
White myWhite;

void setup()  { 
  size(400,400);
// Step 2. Initialize objects.
  //array of objects & constructor
  for (int i=0; i< 20 ; i++)
  {
    myCars[i] = new Car(color(i*20), 0, i*20, random(1,3)); 
  }
  //one object & constructor
  myBall = new Ball (0,0, #0000FF);
  myWhite = new White (width/2,height/2, #FFFFFF);
}    

void draw()  {    
  background(0);  
// Step 3. Call methods on the object. 

  myBall.run();
  myWhite.run();
  for (int i=0; i< 20 ; i++){
    if ((myBall.x > myCars[i].xpos)&& (myBall.x < myCars[i].xpos + 51)&& (myBall.y > myCars[i].ypos)&& (myBall.y < myCars[i].ypos + 21)){
      myCars[i].c = #00FF00;
    }
    if ((myWhite.x1 > myCars[i].xpos)&& (myWhite.x1 < myCars[i].xpos + 51)&& (myWhite.y1 > myCars[i].ypos)&& (myWhite.y1 < myCars[i].ypos + 21)){
      myCars[i].c = #FF00FF;
    }
    else {
      myCars[i].c = 100;
    }
    myCars[i].crush(mouseX,  mouseY);
    myCars[i].drive(); 
    myCars[i].display();
  }   
}      
