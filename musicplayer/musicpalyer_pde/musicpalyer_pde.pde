//Global Variables
int appWidth, appHeight;
int backgroundX, backgroundY, backWidth, backgroundHeigh;
float
float coverX, coverY, coverWidth, coverHeight;
float playbuttonX, playbuttonY, playbuttonWidth, playbuttonHeight;
//
void setup() {
  println("HelloWorld");
  //concatenation & Inspecting Variables With Character Escapes
println("width: "+width+"\theight: "+height+"\tdisplay Width: "+displayWidth+"\tdisplay Height: "+displayHeight);
//NULL: all values are NULL until size(), arithemtic errors
println( "Example Formula: add 1 to the width", width+1 ); 
//
//Display: CANVAS& Full Screen
size(400, 500);
//fullScreen();
appWidth = displayWidth;
appHeight = displayHeight;
//println(appWidth, appHeight);
//Display Geomtry: Landscape, portrait, square
 String dispalyInstructions = ( appWidth >= appHeight ) ?"Good TO Go" :"turn your phone";
 println(dispalyInstructions);
//
// populate
backgroundX = appWidth*0;
backgroundY = appheight*0;
backgroundWidth = appWidth;
backgroundHeight = appHeight;
coverX = appWidth*0;
coverY =  appHeight*1/7; 
coverWidth = appWidth;
coverHeight =  appHeight*4/7;
playbuttonX = appWidth*2.5/5;
playbuttonY = appHeight*5/7;
playbuttonWidth =  appWidth*0.5/5;
playbuttonHeight = appHeight*8/10;
//Layout DIVs
rect(X, Y, Width, Height);
rect(backgroundX, backgroundY, backWidth, backgroundHeight);
int centerX = appWidth*1/2;
int centerY = appHeight*1/2
rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
rect(coverX, coverY, coverWidth, coverHeight)
rect(playbuttonX, playbuttonY, playbuttonWidth, playbuttonHeight);
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
