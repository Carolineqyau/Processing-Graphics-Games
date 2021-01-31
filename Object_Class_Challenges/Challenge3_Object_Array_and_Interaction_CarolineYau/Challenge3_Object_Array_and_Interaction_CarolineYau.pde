//Caroline Yau
//Challenge 3. Object Array and Interaction

// Step 1. Declare an object.
Car [] myCars = new Car [20];

void setup()  { 
  size(1000,400);
  colorMode(HSB);
// Step 2. Initialize objects.
  //array of objects & constructor
  for (int i=0; i< 20 ; i++)
  {
    myCars[i] = new Car(color((i*12), 255, 255), i*50, 0, random(1,2)); 
  }
}    

void draw()  {    
  background(0);  
// Step 3. Call methods on the object. 

  for (int i=0; i< 20 ; i++)
  {
    //if ((myBall.x > myCars[i].xpos)&& (myBall.x < myCars[i].xpos + 51)&& (myBall.y > myCars[i].ypos)&& (myBall.y < myCars[i].ypos + 21)){
    //  myCars[i].c = #00FF00;
    //}
    //else {
      //myCars[i].c = 100;
    //}
    
    myCars[i].crush(mouseX,  mouseY);
    myCars[i].drive(); 
    myCars[i].display();
  }   
}      
