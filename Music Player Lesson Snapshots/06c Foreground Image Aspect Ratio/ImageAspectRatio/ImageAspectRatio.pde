//Global Variables
int appWidth, appHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
PImage albumCoverImage;
String albumCoverImagePath; //Lesson Note: Building Global Var From local Var, System Resources
String EdSmith = "2.-Ed-Smith-1800x1200";
String extensionJPG = ".jpg";
String pathway = "../../../images/";
String landscape_Square = "Landscape & Square Images/";
albumCoverImagePath = pathway + landscape_Square + EdSmith + extensionJPG;
albumCoverImage = loadImage( albumCoverImagePath );
//
void setup() {
  //Display
  //size(600, 400); //width, height //400, 500
  fullScreen(); //displayWidth, displayHeight
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //
  //Population
  albumCoverX = appWidth*18/100; //Percents Example
  albumCoverY = appHeight*15/100;
  albumCoverWidth = appWidth*64/100;
  albumCoverHeight = appHeight*6/16; //Fraction Example
  //
  //DIVs
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //End setup
//
void draw() {
  image( albumCoverImage, albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight );
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End MAIN Program
