//Sketch //Import Library //Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //creates a playlist variable for: WAV, AIFF, AU, SND, and MP3
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; //meta data for the playlist
int loopIntNum = 1; //connect to variable button, increasing the loop number //loopIntNum+1 //loopIntNum+=
int currentSong = numberOfSongs - numberOfSongs; //Formula based on previous variable //Computers start counting at 0

void setup() {
  fullScreen(); //landscape
  minimSetup();
  textSetup();
  variablePopulation();
}

void draw() {
  quitButton();
  leftColumn();
  musicPlayerButtonsDraw();
  songPlaying(); //display for the current song that is playing
}

void keyPressed() {
  //
  if (key == 'p' || key == 'P') {//Play-Pause Button
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
    } else if (song[currentSong].position() == song[currentSong].length()) {//.length() = length of song/end of song
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play(); //.play is the audio player function
    }
  } //End Play-Pause Button
  //
  if (key == 's' || key == 'S') {
    if (song[currentSong].isPlaying()) {//Stop Button
      song[currentSong].pause();
      song[currentSong].rewind();
    } else if (song[currentSong].position() == song[currentSong].length()) {//.length() = length of song/end of song
      song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }
  }//End of Stop Button
  //
  if (key == 'f' || key == 'F') song[currentSong].skip(1000); //End Fast Forward //you have to use milliseconds (1000 miliseconds = 1 second)
  if (key == 'r' || key == 'R') song[currentSong].skip(-1000); //End Rewind 1 second
  //
  if (key == 'l' || key == 'L') song[currentSong].loop(loopIntNum); //Loop Button
  //
  //Next Button
  if (key == 'n' || key == 'N') {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong++;
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      currentSong++;
    }
  }//End Next Button
  //
  //Previous Button (Backwards on Play List)
  if (key == 'b' || key == 'B') {
    currentSong--;
  }//End Previous Button
  //
} //End keyPressed

void mouseClicked() {
  quitButtonMouseClicked();
  musicPlayerButtons();
}
