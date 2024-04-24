/* Documentation
 Library: use Sketch / Import Library / Add Library / Minim
 Suporting Website: https://code.compartmental.net/minim/
 - https://code.compartmental.net/minim/audioplayer_method_loop.html
 */
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer soundEffects1;
AudioPlayer playList1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX, albumCoverY,albumCoverWidth, albumCoverHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float playbuttonX, playbuttonY, playbuttonWidth, playbuttonHeight;
float forwardButtonX, forwardButtonY, forwardButtonWidth, forwardButtonHeight;
float backwardButtonX, backwardButtonY, backwardButtonWidth, backwardButtonHeight;
float pauseButtonX, pauseButtonY, pauseButtonWidth, pauseButtonHeight;
int size;
PFont generalFont;
String quit="QUIT";
String play="PLAY"; 
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
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String extension = ".mp3";
  String quitButtonSound = "CarDoorClosing";
  String pathwaySoundEffects = "../Audio/SoundEffect/"; //Relative Path
  //println ( pathwaySoundEffects+quitButtonSound+extension );
  String path = sketchPath( pathwaySoundEffects + quitButtonSound + extension ); //Absolute Path
  //println ( path );
  soundEffects1 = minim.loadFile( path );
  //playList1 = minim.loadFile( path );
  //
   //Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  size = ( appWidth > appHeight ) ? appHeight : appWidth ; // Font size starts with smaller dimension
  generalFont = createFont("Harrington", size);
  //bottomFont = createFont("", size); //Note: more than one font allowed
  // Tools / Create Font / Find Font / Use size field / Do not press "OK", known bug
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
  forwardButtonX = appWidth*18/100;
  forwardButtonY = appHeight*15/100;
  forwardButtonWidth = appWidth*18/100;
  forwardButtonHeight = appHeight*15/100;
   backwardButtonX = appWidth*18/100;
   backwardButtonY = appHeight*15/100;
   backwardButtonWidth = appWidth*18/100;
   backwardButtonHeight = appHeight*15/100;
   pauseButtonX = appWidth*18/100;
   pauseButtonY = appHeight*15/100;
   pauseButtonWidth = appWidth*18/100;
   pauseButtonHeight = appHeight*15/100;
  //Layout DIVs
  //rect(X, Y; Width, Height);
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
  //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
 // rect(albumCoverX, albumCoverY,albumCoverWidth, albumCoverHeight);
  //rect(playbuttonX, playbuttonY, playbuttonWidth, playbuttonHeight);
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
   fill(purple);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight)
{fill(yellow);
rect(quitButtonX+quitButtonWidth*1/7, quitButtonY, quitButtonWidth*5/7, quitButtonHeight );
fill(foregroundColour);
} else {
fill(purple);
}
  fill(foregroundColour); //Resetting the Defaults
  //Quit, Text
  fill(foregroundColour); //Ink
  textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = appHeight*1/23; // Var based on ratio of display
  textFont(generalFont, size);
  text(quit, quitButtonX+quitButtonWidth*1/7, quitButtonY+quitButtonHeight*1/7, quitButtonWidth*5/7, quitButtonHeight*5/7); //Inside rect() above
  fill(foregroundColour); //Resetting the Defaults
  //

  //println(mouseX, mouseY);

  //
   //Play Button
   fill(purple)
    //if ( mouseX>playButtonX && mouseX<playButtonX+playButton && mouseY>playButtonY && mouseY<playButtonY+playButtonHeight ) fill(yellow);
     fill(purple);
  rect(playButtonX,playButtonY, playButtonWidth, playButtonHeight);
  if ( mouseX>playButtonX && mouseX<playButtonX+playButtonWidth && mouseY>playButtonY && mouseY<playButtonY+playButtonHeight)
{fill(yellow);
rect(playButtonX+playButtonWidth*1/7,playButtonY, playButtonWidth*5/7, playButtonHeight );
fill(foregroundColour);
} else {
fill(purple);
}
  fill(foregroundColour); //Resetting the Defaults
  //Quit, Text
  fill(foregroundColour); //Ink
  textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = appHeight*1/23; // Var based on ratio of display
  textFont(generalFont, size);
  text(play, playtButtonX+playButtonWidth*1/7, playButtonY+playButtonHeight*1/7, playButtonWidth*5/7, playButtonHeight*5/7); //Inside rect() above
  fill(foregroundColour); //Resetting the Defaults
  //
} //End draw
void keypressed() { //Listener
 if (key=='Q' || key=='q') 
 {
   soundEffects1.loop(0);
 delay(2650); //Parameter: milliseconds
    exit();
  }
  if (key==CODED && keyCode==ESC) //Hardcoded QUIT, no sound available
  {
    soundEffects1.loop(0);
    delay(2650); //Parameter: milliseconds
    exit();
  }
  if (key=='W' || key=='w') ;
  
  //soundEffects1.loop(0);  
}//End keypressed
void mousepressed() { //Listener
//QUIT
//;quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight
if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight )
{
  exit();
}
} //End mousepressed
//

//End MAIN Program
