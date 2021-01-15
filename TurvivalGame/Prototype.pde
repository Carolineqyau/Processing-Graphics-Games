//Final Project
//Caroline Yau
//Turvival - Turtle Survival

//The images for the game takes a while to load or restart, please wait patiently.
//Feed turtle (player) by having it touch foods, avoid the black trash.
//Touch the foods to earn 1 point each, trash decreases score by 5.
//Win by earning 10 points, lose when you have negative score

//Step 1. Name my object
Food [] myFood = new Food [100];
Trash [] myTrash = new Trash[100];
Turtle myTurtle;
Score myScore;
int background_x;
PImage bg, turvival, intro1, intro2, intro3, scorebg, win, lose, strawlose, plasticlose, ingestlose;
int screen = 0; //0 = intro1, 1 = intro2, 2 = intro3, 3 = game screen
int death; //identifier for death type in order to display the correct screen

//Step 2. Use the constructor
void setup(){
  size(800, 400);
  bg = loadImage("background.png");
  
  turvival = loadImage("turvival.png");
  intro1 = loadImage("intro1.png");
  intro2 = loadImage("intro2.png");
  intro3 = loadImage("intro3.png");
  scorebg = loadImage("scorebg.png");
  
  win = loadImage("win.png");
  lose = loadImage("lose.png");
  strawlose = loadImage("strawlose.png");
  plasticlose = loadImage("plasticlose.png");
  ingestlose = loadImage("ingestlose.png");
  
  //Foods: 0=crab, 1=jellyfish, 2=squid, 3=fish, 4=shrimp, 5=seastar
  //Trash: 0=plastic bottle, 1=straw, 2=styrofoam, 3=plastic bag, 4=can, 5=toothbrush
  
  int foodS, trashS; //1 = visibility, 0 = disappear
  int foodT, trashT; //indicate types of food/trash to be displayed
  
  for (int i=0; i<100; i++){ 
    if (i%6 == 0){ //use modulo operator to allocate the types
      foodS = 1;
      foodT = 0;
      trashS = 1;
      trashT = 0;
    }
    else if(i%5 == 0){
      foodS = 1;
      foodT = 1;
      trashS = 1;
      trashT = 1;
    }
    else if(i%4 == 0){
      foodS = 1;
      foodT = 2;
      trashS = 1;
      trashT = 2;
    }
    else if (i%3 == 0){
      foodS = 1;
      foodT = 3;
      trashS = 1;
      trashT = 3;
    }
    else if (i%2 == 0){
      foodS = 1;
      foodT = 4;
      trashS = 1;
      trashT = 4;
    }
    else {
      foodS = 1;
      foodT = 5;
      trashS = 1;
      trashT = 5;
    }
    myFood[i] = new Food(random(-7.7*width, 0), random(0, height-40), 255, random(0.8, 2.3), 40, foodT, foodS);
    myTrash[i] = new Trash(random(-7.7*width, 0), random(0, height-40), 255, random(0.8, 2.3), 40, trashT, trashS);
  }
  myTurtle = new Turtle(width - 100, height/2 - 20, 60, 1, 5);
  myScore = new Score(width-40, 40, 30, 0);
}

void draw(){
  //introduction screens
  if (screen == 3){
    startGame();
  }
  else if (screen == 0){
    if (frameCount <= 120){
      background(turvival);
    }
    else {
      background(intro1);
      if (keyPressed){
        if (key == ENTER){
          screen = 1;
        }
      }
    }
  }
  else if (screen == 1){
    background(intro2);
    if (keyPressed){
      if (key == ENTER){
        screen = 2;
      }
    }
  }
  else if (screen == 2){
    background(intro3);
    if (keyPressed){
      if (key == ENTER){
        screen = 3;
      }
    }
  }
  
  //game over and restart screens
  if (keyPressed){
    if (key == ENTER){
      initialize();
      startGame();
    }
  }
  else if (myScore.number >= 10){
    pause();
    background(win);
  }
  else if (myScore.number < 0){
    //Trash: 0=plastic bottle, 1=straw, 2=styrofoam, 3=plastic bag, 4=can, 5=toothbrush
    if (death == 1){
      pause();
      background(strawlose);
    }
    else if ((death == 0)||(death == 2)||(death == 3)){
      pause();
      background(plasticlose);
    }
    else if ((death == 4)||(death == 5)){
      pause();
      background(ingestlose);
    }
  }
}

void startGame(){
  background_x = constrain(background_x, 0, bg.width - width);
  set(-background_x, 0, bg);
  background_x = bg.width - width - frameCount;
  image(scorebg, width-70, 0);
  for (int i=0; i<100; i++){
    myFood[i].display();
    myFood[i].move();
    myTrash[i].display();
    myTrash[i].move();
    
    if (myFood[i].x + myFood[i].size > myTurtle.x && myFood[i].x < myTurtle.x+myTurtle.size &&
    myFood[i].y + myFood[i].size > myTurtle.y && myFood[i].y < myTurtle.y + myTurtle.size){
      if (myFood[i].see == 0){ 
      }
      else if (myFood[i].see == 1){
        myScore.increase();
        myFood[i].see = 0;
        myFood[i].y = -3000; //disappear after eaten
      }
    }
    
    if (myTrash[i].x + myTrash[i].size > myTurtle.x && myTrash[i].x < myTurtle.x+myTurtle.size &&
    myTrash[i].y + myTrash[i].size > myTurtle.y && myTrash[i].y < myTurtle.y + myTurtle.size){
      if (myTrash[i].see == 0){
      }
      else if (myTrash[i].see == 1){
        death = myTrash[i].type;
        myScore.decrease();
        myTrash[i].see = 0;
        myTrash[i].y = -3000;
      }
    }
  }
  myTurtle.display();
  myScore.display();
  myTurtle.y = mouseY - myTurtle.size/2;
}

void initialize(){
  int foodS, trashS; //1 = visibility, 0 = disappear
  int foodT, trashT; //indicate types of food/trash to be displayed
  
  for (int i=0; i<100; i++){ 
    if (i%6 == 0){ //use modulo operator to allocate the types
      foodS = 1;
      foodT = 0;
      trashS = 1;
      trashT = 0;
    }
    else if(i%5 == 0){
      foodS = 1;
      foodT = 1;
      trashS = 1;
      trashT = 1;
    }
    else if(i%4 == 0){
      foodS = 1;
      foodT = 2;
      trashS = 1;
      trashT = 2;
    }
    else if (i%3 == 0){
      foodS = 1;
      foodT = 3;
      trashS = 1;
      trashT = 3;
    }
    else if (i%2 == 0){
      foodS = 1;
      foodT = 4;
      trashS = 1;
      trashT = 4;
    }
    else {
      foodS = 1;
      foodT = 5;
      trashS = 1;
      trashT = 5;
    }
    myFood[i] = new Food(random(-7.7*width, 0), random(0, height-40), 255, random(0.8, 2.3), 40, foodT, foodS);
    myTrash[i] = new Trash(random(-7.7*width, 0), random(0, height-40), 255, random(0.8, 2.3), 40, trashT, trashS);
  }
  myTurtle = new Turtle(width - 100, height/2 - 20, 60, 1, 5);
  myScore = new Score(width-40, 40, 30, 0);
}

void pause(){
  for (int i=0; i<100; i++){
    myFood[i].y = -3000;
    myTrash[i].y = -3000; //in order to not affect death type and losing screen background
  }
}
