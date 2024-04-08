//Global Variables
int appWidth, appHeight;
int backgroundX, backgroundY, backWidth, backgroundHeight
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
background
//Layout DIVs
rect(X,Y, Width, Height);
rect(backgroundX, backgroundY, backWidth, backgroundHeight);
int centerX = appWidth*1/2;
int centerY = appHeight*1/2
rect(centerX*1/2, centerY*1/2, appWidth*1/2, appHeight*1/2);
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
