//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float coverX, coverY, coverWidth, coverHeight;
float playbuttonX, playbuttonY, playbuttonWidth, playbuttonHeight;
//
void setup() {
//size(400, 500); //width, height
//fullScreen(); //displayWidth, displayHeight
appWidth = displayWidth;
appHeight = displayHeight;
//println(appWidth, appHeight);
//Display Geomtry: Landscape, portrait, square
 String dispalyInstructions = ( appWidth >= appHeight ) ?"Good TO Go" :"turn your phone";
 println(dispalyInstructions);
//
// populate
backgroundX = appWidth*0;
backgroundY = appHeight*0;
backgroundWidth = appWidth;
backgroundHeight = appHeight;
coverX = appWidth*18/100;
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
}//End setup
//
void draw() {
} //End draw
//
void keypressed() {
} //End keypressed
//
void mousepressed() {
} //End mousepressed
