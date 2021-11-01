
import controlP5.*;
ControlP5 cp5;
controlP5.Button selectA, selectB, play, stop;

PImage background;
Table dataSource;
int j;
int k;

void setup(){
  size(1280,720);
  background = loadImage("background004.png");
  //load external data
  dataSource = loadTable("NOW-Kaggle-dataset.csv", "header");   
  background(background); 
  
  //set buttons
  cp5 = new ControlP5(this);  
  PImage[] buttonImages = {loadImage("button1.png"),loadImage("button2.png"),loadImage("button3.png")};
  PImage[] playImages = {loadImage("play1.png"),loadImage("play2.png"),loadImage("play3.png")};
  PImage[] stopImages = {loadImage("stop1.png"),loadImage("stop2.png"),loadImage("stop3.png")};
  selectA = cp5.addButton("selectA")    
     .setPosition(width/3,.8*height)
     .setImages(buttonImages)
     .setId(0)
     .updateSize()
     .hide()
     ;
     
  selectB = cp5.addButton("selectB")    
     .setPosition(.7*width,.8*height)
     .setImages(buttonImages)
     .updateSize()
     .hide()
     ;
  
  cp5.addButton("stop")    
     .setPosition(width/8,.8*height)
     .setImages(stopImages)
     .updateSize()
     ;   
     
 cp5.addButton("play")    
     .setPosition(width/24,.8*height)
     .setImages(playImages)
     .updateSize()
     ;    
  
}



