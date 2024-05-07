//Global Variables
int appWidth, appHeight;
float backgroundImagX,  backgroundImagY,  backgroundImagWidth,  backgroundImagHeight;
PImage backgroundImage; 
boolean lightmode=true, daymode=false, nightmode=false;
//boolean darkmode=false; //See keypressed for NOTE
//
void setup() {
  //display
  fullScreen(); 
  appWidth = displayWidth;
  appHeight = displayHeight;
//population
 backgroundImagX = appWidth*0;
 backgroundImagY = appHeight*0;
 backgroundImagWidth = appWidth-1;
 backgroundImagHeight = appHeight-1;
 //
 String Far Away Thunder =  "1.-Jorg-Karg-912x1200";
 String extension = ".jpg";
 String pathway =  "../../../images/"; 
 String 
 backgroundImage = loadImage("");
 //DIV
 rect(backgroundImagX,  backgroundImagY,  backgroundImagWidth,  backgroundImagHeight);
} //End setup
//
void draw() {
  background(255); //Day Mode, Light Mode 
  //NOTE: lighrMode ON = max saturation
  if (lightMode === true ) { 
    brightness=;
  } else {
    brightness=;
image( BackgroundImage, BackgroundImageX, BackgroundImageY, BackgroundImageWidth, BackgroundImageHeight)
//
println(lightMode);
} //End draw 
//
void mousePressed() {} //End mousePressed
//
void keyPressed() { //Key Board Short Cuts for Mouse Pressing Prototyring
 if ( key=='W' || key=='w' ) { //Day Mode, White Light Containing Blue Colour
    if (  lightMode == false ) {
      lightMode = true;  //Light Mode ON
    } else {
      lightMode = false; //Dark Mode ON, no darkMode Boolean required
    }
} //End keyPressed
//
//End MAIN program
