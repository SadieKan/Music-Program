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
  variablePopulation();
}

void draw() {
  quitButton();
  leftColumn();
  songPlaying(); //display for the current song that is playing
}

void keyPressed() {
  //
  if (key == 'p' || key == 'P') {//Play-Pause Button
    if (song1.isPlaying()) {
      song1.pause();
    } else if (song1.position() == song1.length()) {//.length() = length of song/end of song
      song1.rewind();
      song1.play();
    } else {
      song1.play(); //.play is the audio player function
    }
  } //End Play-Pause Button
  //
  if (key == 's' || key == 'S') {
    if (song1.isPlaying()) {//Stop Button
      song1.pause();
      song1.rewind();
    } else if (song1.position() == song1.length()) {//.length() = length of song/end of song
      song1.rewind();
    } else {
      song1.rewind();
    }
  }//End of Stop Button
  //
  if (key == 'f' || key == 'F') song1.skip(1000); //End Fast Forward //you have to use milliseconds (1000 miliseconds = 1 second)
  if (key == 'r' || key == 'R') song1.skip(-1000); //End Rewind 1 second
} //End keyPressed

void mouseClicked() {
  quitButtonMouseClicked();
  musicPlayerButtons();
}
