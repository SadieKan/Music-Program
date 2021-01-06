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
  minim = new Minim(this);
  song1 = minim.loadFile("../Music/Simple - Patrick Patrikios.mp3"); //song1 is the name of the playlist //able to pass absolute path, file name, and URL //remember to add ".." fpr it to go out of the folder
  song1.play();
}

void draw() {
}
