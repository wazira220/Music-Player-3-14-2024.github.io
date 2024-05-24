import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// Minim Library
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer[] playList = new AudioPlayer[1]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer soundEffects1; //"Play List" for Sound Effects
//
int appWidth, appHeight;
//
void setup() {
  //Display
  size(600, 400); //width, height //400, 500
  //fullScreen(); //displayWidth, displayHeight
  appWidth = displayWidth; //width
  appHeight = displayHeight; //height
  //Landscape is HARDCODED
  String displayInstructions = ( appWidth >= appHeight ) ? "Good To Go" : "Bru, turn your phun";
  //println(displayInstructions);
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String pathwaySoundEffects = "../../../../SoundFileSoundEffect/";
  String pathwayMusic = "../../../SoundFile/MusicDownload/"; //Relative Path
  String quitButtonSound = "The_Simplest_sting";
  String groove = "groove";
  String extension = ".mp3";
    //println ( pathwaySoundEffects+quitButtonSound+extension );
  //println ( "Relative Pathway:", pathwayMusic+groove+extension );
  String pathQuitButtonSound = sketchPath( pathwaySoundEffects + quitButtonSound + extension ); //Absolute Path
  String pathGrooveSong = sketchPath( pathwayMusic + groove + extension ); //Absolute Path
  //println ( "Absolute Pathway:", pathGrooveSong ); //pathQuitButtonSound
  soundEffects[0] = minim.loadFile( pathQuitButtonSound );
  playList[0] =  minim.loadFile( pathGrooveSong ); // "" is compiler error
  soundEffects1 = minim.loadFile( pathQuitButtonSound );
  playList1 =  minim.loadFile( pathGrooveSong ); // "" is compiler error
  //
  playList[0].loop(0); //Testing Only
  //
} //End setup
//
void draw() {
  println( "Song Position", playList[0].position(), "Song Length", playList[0].length() );
} //End draw
//
void keyPressed() {
  //Preferences, might need to be in draw()
  int skip = null; //Local, might need to be Global
  if ( key=='' || key=='' ) skip = 5000 ;
  if ( key=='' || key=='' ) skip = 10000 ;
  //
  if ( key=='F' || key=='f' ) playList[0].skip( skip ) ; //SKIP Forward 1 second (1000 milliseconds)
  if ( key=='R' || key=='r' ) playList[0].skip( -skip ) ; //SKIP Reverse 1 second (1000 milliseconds)
} //End keyPressed
//
void mousePressed() {} //End mousPressed
//
//End MAIN Program
//
