//Sketch //Import Library //Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates a playlist variable for: WAV, AIFF, AU, SND, and MP3

void setup() {
  fullScreen(); //landscape
  minimSetup();
  //
  textSetup();
}

void draw() {
}

void mouseClicked() {
}
