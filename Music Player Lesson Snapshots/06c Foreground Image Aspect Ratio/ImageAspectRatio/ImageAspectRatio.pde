//Global Variables
int appWidth, appHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
PImage albumCoverImage;
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
//variable population
//String albumCoverImagePath; //Lesson Note: Building Global Var From local Var, System Resources
String EdSmith = "2.-Ed-Smith-1800x1200";
String extensionJPG = ".jpg";
String pathway = "../../../images/";
String albumCoverImagePath = pathway + EdSmith + extensionJPG;
albumCoverImage = loadImage( albumCoverImagePath );
//
 //Image Aspect Ratio Calculations
  //NOTE: IF-Else & WHILE to Adjust Aspect Ratio Dimensions
  //Forms a Procedure for Aspect Ratios of all Images ( copy and paste in setup() )
  float smallerAlbumCoverDimension = ( albumCoverWidth < albumCoverHeight ) ? albumCoverWidth : albumCoverHeight ;
  float albumCoverImageWidthPixel = 800.0; //Origonally INTs, ratio will be decimal
  float albumCoverImageHeightPixel = 600.0; //CAUTION: must avoid truncation to ZERO Value
  float albumCoverAspectRatio = albumCoverImageWidthPixel/albumCoverImageHeightPixel;
  float largerAlbumCoverDimension = smallerAlbumCoverDimension*albumCoverAspectRatio; //Apsect Ratio
  if ( albumCoverWidth < largerAlbumCoverDimension ) { //Image will not fit into DIV rect()
    while ( albumCoverWidth < largerAlbumCoverDimension ) {
      largerAlbumCoverDimension -= 1;
      smallerAlbumCoverDimension -= 1;
      //NOTE: ratios like percent are not linear decreases in both directions
    }
  }
  albumCoverWidthAdjusted = largerAlbumCoverDimension;
  albumCoverHeightAdjusted = smallerAlbumCoverDimension;
  //
  /*Image can be centered, left justified, or right justified on the larger dimension
   LEFT: X-value of image same as rect()
   CENTERED: X-value of image = albumCoverX + (albumCoverWidth-albumCoverWidthAdjusted)/2;
   RIGHT: X-value of image = albumCoverX+albumCoverWidth-albumCoverWidthAdjusted;
   */
  albumCoverRIGHT = albumCoverX;
  albumCoverCENTERED = albumCoverX + (albumCoverWidth-albumCoverWidthAdjusted)/2;
  albumCoverLEFT =albumCoverX+albumCoverWidth-albumCoverWidthAdjusted;
  //
  //DIVs
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
} //End setup
//
void draw() {
  //change X-Value to CENTERED, RIGHT, or LEFT
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
