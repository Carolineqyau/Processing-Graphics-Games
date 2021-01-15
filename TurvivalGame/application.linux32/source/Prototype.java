import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Prototype extends PApplet {

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
public void setup(){
  
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
    myFood[i] = new Food(random(-7.7f*width, 0), random(0, height-40), 255, random(0.8f, 2.3f), 40, foodT, foodS);
    myTrash[i] = new Trash(random(-7.7f*width, 0), random(0, height-40), 255, random(0.8f, 2.3f), 40, trashT, trashS);
  }
  myTurtle = new Turtle(width - 100, height/2 - 20, 60, 1, 5);
  myScore = new Score(width-40, 40, 30, 0);
}

public void draw(){
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

public void startGame(){
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

public void initialize(){
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
    myFood[i] = new Food(random(-7.7f*width, 0), random(0, height-40), 255, random(0.8f, 2.3f), 40, foodT, foodS);
    myTrash[i] = new Trash(random(-7.7f*width, 0), random(0, height-40), 255, random(0.8f, 2.3f), 40, trashT, trashS);
  }
  myTurtle = new Turtle(width - 100, height/2 - 20, 60, 1, 5);
  myScore = new Score(width-40, 40, 30, 0);
}

public void pause(){
  for (int i=0; i<100; i++){
    myFood[i].y = -3000;
    myTrash[i].y = -3000; //in order to not affect death type and losing screen background
  }
}
class Food{
  //Step 1. attributes
  float x;
  float y;
  int c;
  float speed;
  int size;
  int type; //0=crab, 1=jellyfish, 2=squid, 3=fish, 4=shrimp, 5=seastar
  //total 6 types of food
  int see; //0=disappear, 1=appear
  boolean mouse;
  PImage shrimp;
  PImage jellyfish;
  PImage squid;
  PImage fish;
  PImage crab;
  PImage seastar;
  
  //Step 2. Constructor
  Food(float tempx, float tempy, int tempc, float tempspeed, int tSize, int ttype, int tsee){
    x = tempx;
    y = tempy;
    c = tempc;
    speed = tempspeed;
    size = tSize;
    type = ttype;
    see = tsee;
    crab = loadImage("crab.png");
    jellyfish = loadImage("jellyfish.png");
    squid = loadImage("squid.png");
    fish = loadImage("fish.png");
    shrimp = loadImage("shrimp.png");
    seastar = loadImage("seastar.png");
  }
  
  //Step 3. Functions
  public void display(){
    noStroke();
    if (type == 0){
      image(crab, x, y);
    }
    else if (type == 1){
      image(jellyfish, x, y);
    }
    else if (type == 2){
      image(squid, x, y);
    }
    else if (type == 3){
      image(fish, x, y);
    }
    else if (type == 4){
      image(shrimp, x, y);
    }
    else if (type == 5){
      image(seastar, x, y);
    }
  }
    
  public void move(){
    x = x + speed;
    if (x > width){
      x = -width;
    }   
  }
  
  //void clicks (float mx, float my){
  //  if ((mx>x) && (mx<x + fSize) && (my>y) && (my < y + fSize)){
  //    if (type == 0){
  //      type = 1;
  //      c = #00FF00;
  //    }
  //    else if (type == 1){
  //      type = 0;
  //      c = #FF0000;
  //    }
  //  }
  //}
}
class Score{
  float x;
  float y;
  float size;
  int number;
  
  Score(float tempx, float tempy, int tempSize, int tempnumber){
    x = tempx;
    y = tempy;
    size = tempSize;
    number = tempnumber;
  }
  
  public void display(){
    fill(255);
    stroke(0);
    textSize(size);
    text(number, x, y);
    noStroke();
  }
  
  public void increase(){
    number += 1;
  }
  
  public void decrease(){
    number -= 5;
  }
  
}
  
class Trash{
  //Step 1. attributes
  float x;
  float y;
  int c;
  float speed;
  int size;
  int type; //0=plastic bottle, 1=straw, 2=styrofoam, 3=plastic bag, 4=can, 5=toothbrush
  //total 6 types of trash
  int see; //0=disappear, 1=appear
  boolean mouse;
  PImage bottle;
  PImage straw;
  PImage styrofoam;
  PImage bag;
  PImage can;
  PImage toothbrush;
  
  //Step 2. Constructor
  Trash(float tempx, float tempy, int tempc, float tempspeed, int tSize, int ttype, int tsee){
    x = tempx;
    y = tempy;
    c = tempc;
    speed = tempspeed;
    size = tSize;
    type = ttype;
    see = tsee;
    bottle = loadImage("bottle.png");
    straw = loadImage("straw.png");
    styrofoam = loadImage("styrofoam.png");
    bag = loadImage("bag.png");
    can = loadImage("can.png");
    toothbrush = loadImage("toothbrush.png");
  }
  
  //Step 3. Functions
  public void display(){
    noStroke();
    if (type == 0){
      image(bottle, x, y);
    }
    else if (type == 1){
      image(straw, x, y);
    }
    else if (type == 2){
      image(styrofoam, x, y);
    }
    else if (type == 3){
      image(bag, x, y);
    }
    else if (type == 4){
      image(can, x, y);
    }
    else if (type == 5){
      image(toothbrush, x, y);
    }
  }
  
  public void move(){
    x = x + speed;
    if (x > width){
      x = -width;
    }   
  }
  
  //void clicks (float mx, float my){
  //  if ((mx>x) && (mx<x + fSize) && (my>y) && (my < y + fSize)){
  //    if (type == 0){
  //      type = 1;
  //      c = #00FF00;
  //    }
  //    else if (type == 1){
  //      type = 0;
  //      c = #FF0000;
  //    }
  //  }
  //}
}
class Turtle{
  float x;
  float y;
  int size;
  int c;
  boolean touch;
  float speed;
  PImage turtle;
  
  Turtle(float tempx, float tempy, int tempSize, int tempc, float tspeed){
    x = tempx;
    y = tempy;
    size = tempSize;
    c = tempc;
    speed = tspeed;
    turtle = loadImage("turtle.png");
  }
  
  public void display(){
    image(turtle, x, y);
  }
  
  public void move(int dir){
    y = y + speed*dir;
    if (y > height){
      y = 0;
    }
    else if (y < 0){
      y = height;
    }
  }
  
  //void collide(Food theFood){
    //if (theFood.x + theFood.fSize > x && theFood.x < x+tSize &&
    //theFood.y + theFood.fSize > y && theFood.y < y + tSize){
    //  if (theFood.type == 0){
    //    //x = 0;
    //    //tSize -= 10;
    //    //y = height - tSize;
    //    //theFood.y = 0;
        
    //  }
    //  else if (theFood.type == 1){
    //    //x = 0;
    //    //tSize += 10;
    //    //y = height - tSize;
    //    //theFood.y = 0;
    //  }
    //}
  //}
}
  public void settings() {  size(800, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Prototype" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
