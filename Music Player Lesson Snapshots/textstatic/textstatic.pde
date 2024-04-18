/*purpose
-introduce single and mutliple executed code
-activity: do another rectangle with text in it
-copy and paste to dynamic program
*/
//
Global Variables
float titleX, titleY, titleWidth, titleHeight ;
pFront titleFront; 
string title
//
//Display Geoemtry, Display Orientation: Landscape, portrait, square
fullScreen();
//
//concatenation & Inspection of Variables
println("Display Monitor:","width: " displayWidth, "\ theight: "+displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//population
titleX =*1/10 ;
titleY = *1/10;
titleWidth =*8/10 ;
titleHeight =*1/10 ;
//
//single Executed code: Font SETUP
//Fonts from OS (operating System)
string[] fontlist  = PFont.list(); //To list all fonts available on OS
printArray(fontList); //For listing all possible fronts to choose from, then createFont
titleFront = createFont("ErasITC-Demi", 26);
// Tools / CreateFont / Find Fron / Use size filed 
//
//DIVs & rect()s: rect(X, Y, Width, Height);
rect(titleX, titleY, titleWidth, titleHeight);
//rect(X, Y, Width, Height); //footer
//
//Repeated Code: draw()ing text
text (title, titleX, titleY, titleWidth, titleHeight)
