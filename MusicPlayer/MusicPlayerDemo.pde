void musicPlayerDemo() {
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
      if (currentSong == numberOfSongs-1) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++; //Adds 1 to the current song number
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if (currentSong == numberOfSongs-1) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++;
      }
    }
  }//End Next Button
  //
  //Previous Button (Backwards on Play List)
  if (key == 'b' || key == 'B') {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numberOfSongs - numberOfSongs) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--; //Adds 1 to the current song number
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if (currentSong == numberOfSongs - numberOfSongs) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
    }
  }//End Previous Button
}
