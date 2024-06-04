//Global Variables
int appWidth, appHeight, brightness=255;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage backgroundimage,image
//boolean lightMode=true, starWars=false, nightMode=false;
String path
//Image Files & Folder Names
String space = "space-7978460_1280";
String unsplash = "unsplash-image-Qi8CvonsYnM";
String backgroundImageName = " space";
String extension = ".jpg";
String pathway = "../../../images/backgroundimage"; 
//Boolean darkMode=false; //See keyPressed for NOTE
//
void setup() {
  //Display
  size(600, 400);
  //fullScreen();
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  //
  //Control with IFs
  backgroundImageName = space;
  path = pathway + backgroundimage + extension;
  backgroundimage = loadimage( path );
  //
  //DIV
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End setup
//
void draw() {
  background(255); //Day Mode, Light Mode ON / OFF, WHITE allowed
  //NOTE: lightMode ON = max saturation
  if ( lightMode == true ) {
    backgroundImageName = space; //obiWan
    path = pathway + backgroundImage  + extension;
    backgroundImage = loadImage( path );
  } 
  else {
    backgroundImageName = unsplash ;
    path = pathway + backgroundImage  + extension;
    backgroundImage = loadImage( path );
  }
  tint(255, brightness); //255 is max saturation, max colour
  image( backgroundImage, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  //
  println(lightMode);
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() { //Key Board Short Cuts for Mouse Pressing Prototyping
  if ( key=='W' || key=='w' ) { //Day Mode, White Light Containing Blue Colour
    if (  lightMode == false ) {
      lightMode = true;  //Light Mode ON
    } else {
      lightMode = false; //Dark Mode ON, no darkMode Boolean required
    }
  } //End Day Mode
  //if () {} //End Night Mode
} //End keyPressed
//
//End MAIN Program
