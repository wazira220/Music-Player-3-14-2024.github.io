float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight;
float playButtonX, playButtonY, playButtonWidth, playButtonHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float progressBarX, progressBarY, progressBarWidth, progressBarHeight;
float timeDisplayX, timeDisplayY, timeDisplayWidth, timeDisplayHeight;
//
boolean isPlaying = false;
int elapsedTime = 0; // In seconds
int totalDuration = 240; //Total duration of the song in seconds

void divs() {
  population();
  drawRects();
} //End DIVs
//
void population() {
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;

  albumCoverX = appWidth*18/100; //Percents Example
  albumCoverY = appHeight*15/100;
  albumCoverWidth = appWidth*64/100;
   albumCoverHeight = appHeight*6/16; //Fraction Example

  playButtonX = appWidth*3.5/8;
  playButtonY = appHeight*8/9;
  playButtonWidth = appWidth*1/8;
  playButtonHeight = appHeight*1/12;

  quitButtonX = appWidth*90/100;
  quitButtonY = appHeight*91/100;
  quitButtonWidth = appWidth*9/100;
  quitButtonHeight = appHeight*8/100;

  progressBarX = Width*1/10;
  progressBarY = Height *7.5/10;
  progressBarWidth = Width *8/10;
  progressBarHeight = Height*1/30;

  timeDisplayX = Width*1/10;
  timeDisplayY = Height*7/10;
  timeDisplayWidth = Width*8/10;
  timeDisplayHeight = Height*1/20;
  
} //End Population
//
void drawRects() { //Layout DIVs
  //Formula: rect(X, Y, Width, Height);
  //
  //rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //
  int centerX = appWidth*1/2;
  int centerY = appHeight*1/2;
    //rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
  //
  rect(albumCoverX, albumCoverY, albumCoverWidth, albumCoverHeight);
  rect(playButtonX, playButtonY, playButtonWidth, playButtonHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
} //End Draw Rectangles
//
 //DIV
  rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
} //End setup
//
//End DIVs SubProgram
