//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX, albumCoverY,albumCoverWidth, albumCoverHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float playbuttonX, playbuttonY, playbuttonWidth, playbuttonHeight;
float forwardButtonX, forwardButtonY, forwardButtonWidth, forwardButtonHeight;
float backwardButtonX, backwardButtonY, backwardButtonWidth, backwardButtonHeight;
float pauseButtonX, pauseButtonY, pauseButtonWidth, pauseButtonHeight;
//
color backgroundColour,darkBackground=0, whiteBackground=255; //Gray Scale, note much smaller than COLOR
color foregroundColour;
color white=255, yellow=#FFFF00, black=0, purple=#FF00FF; //Hexidecimal, see Tools / Colour Selector
Boolean whiteMode=false;
//
void setup() {
  //size(400, 500); //width, height
  fullScreen(); //displayWidth, displayHeight
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
  albumCoverY =  appHeight*15/100;
  albumCoverWidth = appWidth*64/100;
 albumCoverHeight =  appHeight*6/16;
  playbuttonX = appWidth*2.5/5;
  playbuttonY = appHeight*5/7;
  playbuttonWidth =  appWidth*0.5/5;
  playbuttonHeight = appHeight*1/10;
  quitButtonX = appWidth*90/100;
  quitButtonY = appHeight*91/100;
  quitButtonWidth =  appWidth*9/100;
  quitButtonHeight = appHeight*8/100;
  forwardButtonX = appWidth
  forwardButtonY = appHeight
  forwardButtonWidth = appWidth
  forwardButtonHeight = appHeight
  //rect(X, Y; Width, Height);
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  rect(albumCoverX, albumCoverY,albumCoverWidth, albumCoverHeight);
  rect(playbuttonX, playbuttonY, playbuttonWidth, playbuttonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  rect(forwardButtonX, forwardButtonY, forwardButtonWidth, forwardButtonHeight);
  rect(backwardButtonX, backwardButtonY, backwardButtonWidth, backwardButtonHeight);
  rect(pauseButtonX, pauseButtonY, pauseButtonWidth, pauseButtonHeight);
  rect(X, Y, width, height);
  rect(X, Y, width, height);
  rect(X, Y, width, height);
  rect(X, Y, width, height);
  rect(X, Y, width, height);
  rect(X, Y, width, height);
  rect(X, Y, width, height);
  rect(X, Y, width, height);
   
   //
   //Variable Population
  //if ( hour()>=9 && hour()<=17 ) backgroundColour = whiteBackground;
  //if ( hour()<9 && hour()>17 ) backgroundColour = darkBackground; 
  if ( whiteMode==true && hour()>=9 && hour()<=17 ) {
    backgroundColour = whiteBackground;
    foregroundColour = #FFFFFF;
  } else {
    backgroundColour = darkBackground;
    foregroundColour = yellow; //Note: if(hour()<9&&hour()>17) 
    if ( hour()>=9 && hour()<=17 ) foregroundColour = white;
  }
  //
}//End setup
//
void draw() {
  background(backgroundColour); 
  fill(foregroundColour);
  //
  //Quit button
 // fill(purple);
  //if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) fill(yellow);
   rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
   fill(purple);
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight)
{fill(yellow);
rect(quitButtonX+quitButtonWidth*1/7, quitButtonY, quitButtonWidth*5/7, quitButtonHeight );
fill(foregroundColour);
} else {
fill(purple);
}
  fill(foregroundColour);
  println(mouseX, mouseY);
  //
} //End draw
//
void keypressed() { //Listener
 if (key=='Q' || key=='q') exit();
 if (key==CODED && keyCode==UP ) exit();
 if (key=='W'|| key=='w');
} //End keypressed
//
void mousepressed() { //Listener
//QUIT
//;quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight
if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight )
{
  exit();
}
} //End mousepressed
