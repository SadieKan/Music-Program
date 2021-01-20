void musicPlayerButtonsDraw() {
  //Play Pause Button
  if (song[currentSong].isPlaying()) {
    image(pauseButton, playPauseX-songPlayingWidth/60, playPauseY-songPlayingWidth*1/70, playPauseWidth*31/25, playPauseHeight*31/25);
  } else {
    image(playButton, playPauseX, playPauseY-songPlayingWidth*1/70, playPauseWidth*31/25, playPauseHeight*31/25);
  }

  //Forward + Back
  image(backButton, backX-songPlayingWidth/60, backY-songPlayingWidth*1/70, backWidth*32/25, backHeight*32/25);
  image(nextButton, nextX-songPlayingWidth/60, nextY-songPlayingWidth*1/70, nextWidth*32/25, nextHeight*32/25);
}

void musicPlayerButtons() {
  if (mouseX>playPauseX && mouseX<playPauseX+playPauseWidth && mouseY>playPauseY && mouseY<playPauseY+playPauseHeight) {
    click.play();
    click.rewind();
    if ( song[currentSong].position() == song[currentSong].length() ) {//.length() = length of song/end of song
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      if (song[currentSong].isPlaying()) {
        song[currentSong].pause();
      } else {
        song[currentSong].play();
      }
    }
  }
  if (mouseX>backX && mouseX<backX+backWidth && mouseY>backY && mouseY<backY+backHeight) {
    click.play();
    click.rewind();
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == 0) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if (currentSong == 0) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
    }
  }
  if (mouseX>nextX && mouseX<nextX+nextWidth && mouseY>nextY && mouseY<nextY+nextHeight) {
    click.play();
    click.rewind();
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numberOfSongs-1) {
        currentSong = 0;
      } else {
        currentSong++; //Adds 1 to the current song number
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if (currentSong == numberOfSongs-1) {
        currentSong = 0;
      } else {
        currentSong++;
      }
    }
  }
}
