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
  song1 = minim.loadFile(""); //able to pass absolute path, file name, and URL
}//End Setup
//
void draw() {}//End Draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN
