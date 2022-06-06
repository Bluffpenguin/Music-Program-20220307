//Libraries: uses Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variables holding extensions WAV, AIFF, AU, SND, & MP3
//
void setup() 
{
  fullScreen(); //size(500, 600);, Display Geometry is Mandatory
  minim = new Minim(this);//Loads from data directory, loadFile should also load from project folder, like loadImage()
  song1 = minim.loadFile("MusicDownload/Chasing the Dragon.mp3"); //able to pass absolute path, file name & extension, and URL
}//End Setup
//
void draw() {
  if ( song1.isLooping() ) println("There are", song1.loopCount(), "loops left");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
  //
  println("Song Position", song1.position(), "Song Length", song1.length() );
}//End Draw
//
void keyPressed() 
{
  //Only press a number for this code
  if ( key=='1' || key=='9') { //Looping Functions
    //Note: "9" is assumed to be massive! Simulate Infinite
    if ( key=='1' ) println("Looping 1 times");
    if ( key=='9' ) println("Looping 9 times"); //Simulating Infinity
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int num = int(keystr);
    song1.loop(num);
  }//End Loop
  if (key=='l' || key=='L') song1.loop(); //No parameter means "infinite loops"
  if ( key>='2' && key!='9') println("I do not loop that much! Try again.");
  //
  //Alternate Play-Pause Button
  if ( key=='p' || key=='P' ) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if (song1.position() >= song1.length()-song1.length()*1/6) { //Special Situation: at the end of the song (built in stop button)
      //End of Song Calculation: hardcode 1000 or use formula
      //Alternate formula song1.length() - song1.position() <= 1000
      song1.rewind();
      song1.play();
    } else {
      song1.play(); //Parameter is milli-seconds from start of audio file to start of playing
    }
  }//End PLAY-PAUSE Button
  //
  //Forward and Reverse Button
  //Built-in question .isPlaying()
  if ( key=='f' || key=='F' ) song1.skip(1000); // skip forward 1 second (1000 milliseconds)
  if ( key=='r' || key=='R' ) song1.skip(-1000); // skip backward 1 second (1000 milliseconds)
  //
  if ( key=='m' || key=='M' ) {//MUTE Button
    if ( song1.isMuted() ) 
    {//MUTE Button
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE
  //
  //STOP Button
  if ( key=='s' || key=='S' ) {
    if ( song1.isPlaying()) {//STOP Button
      song1.pause();
      song1.rewind();
    } else {
      song1.rewind();
    }
  }//End STOP Button
  //End STOP Button
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN
