//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float albumCoverX, albumCoverY,albumCoverWidth, albumCoverHeight;
float playbuttonX, playbuttonY, playbuttonWidth, playbuttonHeight;
//
color backgroundcolour,darkbackground, whitebackground;
Boolean WhiteMode=false;
//
void setup() {
  //size(400, 500); //width, height
  //fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
 //Landscape is HARDCODED
  String dispalyInstructions = ( appWidth >= appHeight ) ?"Good TO Go" :"turn your phone";
  println(dispalyInstructions);
  //
  // populate
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
  albumCoverX = appWidth*18/100;
  coverY =  appHeight*15/100;
  coverWidth = appWidth*64/100;
  coverHeight =  appHeight*6/16;
  playbuttonX = appWidth*2.5/5;
  playbuttonY = appHeight*5/7;
  playbuttonWidth =  appWidth*0.5/5;
  playbuttonHeight = appHeight*8/10;
  quitButtonX = appWidth*90/100;
  quitButtonY = appHeight*91/100;
  quitButtonWidth =  appWidth*9/100;
  quitButtonHeight = appHeight*8/100;
  //Layout DIVs
  //rect(X, Y; Width, Height);
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  rect(coverX, coverY, coverWidth, coverHeight);
  rect(playbuttonX, playbuttonY, playbuttonWidth, playbuttonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  /*
rect(X, Y, Width, Height);
   rect(X, Y, Width, Height);
   rect(X, Y, Width, Height);
   rect(X, Y, Width, Height);
   rect(X, Y, Width, Height);
   rect(X, Y, Width, Height);
   rect(X, Y, Width, Height);
   rect(X, Y, Width, Height);
   rect(X, Y, Width, Height);
   rect(X, Y, Width, Height);
   rect(X, Y, Width, Height)
   */
  //var population
  darkbackground = 0; //Gray Scale, smaller than COLOR
  whitebackground = 255; // Gray Scale, smaller than COLOR
  WhiteMode = true;
  //if ( hour()>=9 && hour()<=17 ) backgroundcolour = whitebackground;
  //if ( hour()<=9 && hour()>=17 ) backgroundcolour = darkbackground;
  if (WhiteMode==true&&  hour()>=9 && hour()<=17 ) {
    backgroundcolour = whitebackground;
  } else {
    backgroundcolour = darkbackground;
  }
  //
}//End setup
//
void draw() {
  background(2); //grayscale
  //rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
} //End draw
//
void keypressed() {
} //End keypressed
//
void mousepressed() {
} //End mousepressed
