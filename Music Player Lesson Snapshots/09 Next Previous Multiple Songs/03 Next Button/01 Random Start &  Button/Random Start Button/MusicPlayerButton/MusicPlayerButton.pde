import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// Minim Library
//
//Global Variables
Minim minim ; //creates object to access all functions
int numberSoundEffects = 4; //DEV Verify, OS able to count (CS20 Solution)
int numberMusicSongs = 8; //DEV Verify, OS able to count (CS20 Solution)
String[] filePathNameMusic = new String[numberMusicSongs];
String[] filePathNameSoundEffect = new String[numberSoundEffects];
AudioPlayer playList; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer soundEffects; //"Play List" for Sound Effects
int currentSong = numberMusicSongs - numberMusicSongs; //JAVA starts counting at 0, not for all languages
//
int appWidth, appHeight;
//
Boolean looping=false;
//Protects .rewind in draw() from being inappropriately accessed between .play(), .loop(1), & .loop()
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
  String pathwaySoundEffects = "../../../SoundFile/SoundEffect/"; //Relative Path
  String pathwayMusic = "../../../SoundFile/MusicDownload/"; //Relative Path
  String quitButtonSound = "CarDoorClosing";
  String groove = "groove";
  String cycles = "Cycles";
  String eureka = "Eureka";
  String extension = ".mp3";
  //println ( pathwaySoundEffects+quitButtonSound+extension );
  //println ( "Relative Pathway:", pathwayMusic+groove+extension );
  String pathQuitButtonSound = sketchPath( pathwaySoundEffects + quitButtonSound + extension ); //Absolute Path
  filePathNameMusic[currentSong] = sketchPath( pathwayMusic + groove + extension ); //Absolute Path
  //println( currentSong, filePathNameMusic[currentSong] );
  //Equivalent Functions: ++ | +=1
  filePathNameMusic[currentSong+=1] = pathwayMusic + cycles + extension;
  //println( currentSong, filePathNameMusic[currentSong] );
  filePathNameMusic[currentSong+=1] = pathwayMusic + eureka + extension;
  //println( currentSong, filePathNameMusic[currentSong] );
  //
  filePathNameSoundEffect[0] = pathQuitButtonSound;
  //println ( "Absolute Pathway:", filePathNameSoundEffect[0] ); //pathQuitButtonSound
  //
  soundEffects = minim.loadFile( filePathNameSoundEffect[0] );
  //
  //Random Start Prototype
  //println( "Current Song, Random Number:", int ( random(numberMusicSongs-numberMusicSongs, numberMusicSongs) ) );
  //
  //Note: Music starts before CANVAS ... Purpose of Player
  //Note: See Easter Egg about Time-On and Looping Songs
  println(currentSong, filePathNameMusic[currentSong]);
  currentSong = numberMusicSongs-numberMusicSongs; //Resetting the Defaults
  playList =  minim.loadFile( filePathNameMusic[currentSong] ); // "" is compiler error
  //Note: music player "plays" one loaded song at a time
  playList.loop(0); //Testing Only
  //
} //End setup
//
void draw() {
  //Random Start Prototype
  //println( "Current Song, Random Number:", currentSong );
  //
  //AutoPlay
  if ( playList.isPlaying() ) {
    if ( !playList.isLooping() && looping==true) looping=false; //Protect .loop() from .rewind() as STOP Loop
  } else if ( looping == false && !playList.isPlaying() && playList.length() < 180000 ) { //PAIN Minutes is 3 minutes, 180s, 180,000ms
    //TRUE: if song is less than 3 minutes, STOP, I want to hear it from the beginning
    //.pause() in keyPressed() {} is actually STOP
    playList.rewind(); //NOTE: !.isPlaying() & .rewind() = STOP
  } else if ( looping == false && !playList.isPlaying()  && ( playList.position() > playList.length()*0.75 ) ) { //Calc PAIN # as % of Song
    //TRUE: if 75% played, we need a STOP & Rewind Button
    //.pause() in keyPressed() {} is actually STOP
    playList.rewind(); //NOTE: !.isPlaying() & .rewind() = STOP
  } else {
    /* Future coding
     currentSong = currentSong + 1; //currentSong++; currentSong+=1
     playList[currentSong].play();
     */
  }
  //
} //End draw
//
void keyPressed() {
  if ( key=='A' || key=='a') { //Randomly Pick another song in the Play List
    currentSong = int ( random( numberMusicSongs-numberMusicSongs, numberMusicSongs ) );
    println( "Current Song, Random Number:", currentSong );
    playList.pause(); //Note: computer plays harddrive file,
    playList.rewind(); //     mulitple files will play at the same time
    playList =  minim.loadFile( filePathNameMusic[currentSong] );
    playList.play();
  }
  //
  if ( key=='P' || key=='p' ) { //Play Pause Button
    //How much of the song should play before the Pause Button is actually a rewind button
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  } //End Play Pause Button
  if ( key=='L' || key=='l' ) { //Loop Once
    playList[currentSong].loop(1);
    looping = true;
  } //End Loop Once
  if ( key=='I' || key=='i' ) { //Loop Infinite Times
    playList[currentSong].loop();
    looping = true;
  } //End Loop Infinite Times
  if ( key=='S' || key=='s' ) { // STOP Button
    playList[currentSong].pause();
    playList[currentSong].rewind(); //Affects LOOP Times
    looping = false;
  } // End STOP Button
  //
} //End keyPressed
//
void mousePressed() {
} //End mousPressed
//
//End MAIN Program
//
