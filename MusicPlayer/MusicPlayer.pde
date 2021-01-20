//Change the code for the buttons to function differently
//randomize the numbers so that the playlist is random each time
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
//AudioPlayer click;
int loopIntNum = 1; //connect to variable button, increasing the loop number //loopIntNum+1 //loopIntNum+=
int currentSong = numberOfSongs - numberOfSongs; //Formula based on previous variable //Computers start counting at 0
//
color black = #000000, white = #FFFFFF, lightGray, blueGray, lightTeal, teal, darkGray;
PFont buttonFont;
int quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
int leftColumnX, leftColumnY, leftColumnWidth, leftColumnHeight, leftColumnHeaderHeight;
int rightColumnX, rightColumnWidth, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight;
int playPauseX, playPauseY, playPauseWidth, playPauseHeight, nextX, nextY, nextWidth, nextHeight, backX, backY, backWidth, backHeight;
PImage pic1, pic2, pic3, pic4, pic5, rewindButton, forwardButton, playButton, pauseButton, nextButton, backButton;

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
}

void keyPressed() {
  musicPlayerDemo();
} //End keyPressed

void mouseClicked() {
  quitButtonMouseClicked();
  leftColumnClicked();
  musicPlayerButtons();
}
