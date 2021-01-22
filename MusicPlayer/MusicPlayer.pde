//Currently working on loop 
//Click on the line under the artist name (right column) to change the position of the song
//Sketch //Import Library //Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
int numberOfSongs = 5;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //creates a playlist variable for: WAV, AIFF, AU, SND, and MP3
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; //meta data for the playlist
AudioPlayer click;
int loopIntNum = 1; //connect to variable button, increasing the loop number //loopIntNum+1 //loopIntNum+=
int currentSong = numberOfSongs - numberOfSongs; //Formula based on previous variable //Computers start counting at 0
//Visualizer
FFT fft;
AudioMetaData meta;
AudioInput input;
BeatDetect beat;
BeatListener bl; 
int r = 200, t = 0;
float radius = 70, cbright = 20, cdiameter, totaldiameter;
//
color black = #000000, white = #FFFFFF, lightGray, blueGray, lightTeal, teal, darkGray, darkBlueGray;
PFont buttonFont;
int quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int leftColumnX, leftColumnY, leftColumnWidth, leftColumnHeight, leftColumnHeaderHeight;
int rightColumnX, rightColumnWidth, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight, timeX, timeY, timeWidth, timeHeight, timeX2;
int rewindX, rewindY, rewindWidth, rewindHeight, forwardX, forwardY, forwardWidth, forwardHeight, playPauseX, playPauseY, playPauseWidth, playPauseHeight;
int nextX, nextY, nextWidth, nextHeight, backX, backY, backWidth, backHeight, shuffleX, shuffleY, shuffleWidth, shuffleHeight, loopX, loopY, loopWidth, loopHeight;
PImage pic1, pic2, pic3, pic4, pic5, rewindButton, forwardButton, playButton, pauseButton, nextButton, backButton, shuffleButton, loopButton, shuffleButton2, loopButton2;
Boolean shuffleOn=false, loopOn=false;


void setup() {
  fullScreen(); //landscape
  minimSetup();
  textSetup();
  variablePopulation();
}

void draw() {
  leftColumn();
  songPlaying(); //display for the current song that is playing
  musicPlayerButtonsDraw();
  quitButton();
  visualizer(); //circle
}

void mouseClicked() {
  quitButtonMouseClicked();
  leftColumnClicked();
  musicPlayerButtons();
}


class BeatListener implements AudioListener
{
  private BeatDetect beat;
  private AudioPlayer source;

  BeatListener(BeatDetect beat, AudioPlayer source)
  {
    this.source = source;
    this.source.addListener(this);
    this.beat = beat;
  }

  void samples(float[] samps)
  {
    beat.detect(source.mix);
  }

  void samples(float[] sampsL, float[] sampsR)
  {
    beat.detect(source.mix);
  }
}
