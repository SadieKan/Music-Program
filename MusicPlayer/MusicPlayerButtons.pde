void musicPlayerButtonsDraw() {
  //Rewind Button
  //rect(rewindX, rewindY, rewindWidth, rewindHeight);
  image(rewindButton, rewindX-songPlayingWidth/70, rewindY-songPlayingWidth*1/100, rewindWidth*32/25, rewindHeight*32/25);

  //Forward Button
  //rect(forwardX, forwardY, forwardWidth, forwardHeight);
  image(forwardButton, forwardX-songPlayingWidth/70, forwardY-songPlayingWidth*1/100, forwardWidth*32/25, forwardHeight*32/25);

  //Play Pause Button
  if (song[currentSong].isPlaying()) {
    image(pauseButton, playPauseX-songPlayingWidth/60, playPauseY-songPlayingWidth*1/70, playPauseWidth*31/25, playPauseHeight*31/25);
  } else {
    image(playButton, playPauseX, playPauseY-songPlayingWidth*1/70, playPauseWidth*31/25, playPauseHeight*31/25);
  }

  //Forward + Back
  image(backButton, backX-songPlayingWidth/60, backY-songPlayingWidth*1/70, backWidth*32/25, backHeight*32/25);
  image(nextButton, nextX-songPlayingWidth/60, nextY-songPlayingWidth*1/70, nextWidth*32/25, nextHeight*32/25);

  //Shuffle Button
  if (shuffleOn == true) {
    image(shuffleButton2, shuffleX-songPlayingWidth/50, shuffleY-songPlayingWidth*1/24, shuffleWidth*33/25, shuffleWidth*33/25);
  } else {
    image(shuffleButton, shuffleX-songPlayingWidth/50, shuffleY-songPlayingWidth*1/24, shuffleWidth*33/25, shuffleWidth*33/25);
  }

  //Loop Button
  if (loopOn == true) {
    image(loopButton2, loopX-songPlayingWidth/50, loopY-songPlayingWidth*1/26, loopWidth*32/25, loopWidth*32/25);
  } else {
    image(loopButton, loopX-songPlayingWidth/50, loopY-songPlayingWidth*1/26, loopWidth*32/25, loopWidth*32/25);
  }
}



void musicPlayerButtons() {
  //Changing the Position of the Song
  if (mouseY > height*317/400 && mouseY < height*323/400) {
    int position = int( map( mouseX, songPlayingX, songPlayingX+songPlayingWidth, 0, song[currentSong].length() ) );
    song[currentSong].cue( position );
  }

  //Normal Music Buttons
  if (mouseX>rewindX && mouseX<rewindX+rewindWidth && mouseY>rewindY && mouseY<rewindY+rewindHeight) {
    click.play();
    click.rewind();
    song[currentSong].skip(-10000); //10 seconds
  }

  if (mouseX>forwardX && mouseX<forwardX+forwardWidth && mouseY>forwardY && mouseY<forwardY+forwardHeight) {
    click.play();
    click.rewind();
    song[currentSong].skip(10000); //10 seconds
  }

  if (mouseX>playPauseX && mouseX<playPauseX+playPauseWidth && mouseY>playPauseY && mouseY<playPauseY+playPauseHeight) {
    click.play();
    click.rewind();
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
    } else {
      song[currentSong].play();
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
    loopOn = false;
    if (shuffleOn == true) {
      if (song[currentSong].isPlaying()) {
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong = int(random(0, 4));
        song[currentSong].play();
      } else {
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong = int(random(0, 4));
      }
    } else if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numberOfSongs-1) {
        currentSong = 0;
      } else {
        currentSong++;
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

  if (mouseX>shuffleX && mouseX<shuffleX+shuffleWidth && mouseY>shuffleY && mouseY<shuffleY+shuffleHeight) {
    click.play();
    click.rewind();
    if (shuffleOn == true) {
      shuffleOn = false;
    } else if (shuffleOn == false && loopOn == true) {
      loopOn=false;
      shuffleOn = true;
    } else {
      shuffleOn = true;
    }
  }

  if (mouseX>loopX && mouseX<loopX+loopWidth && mouseY>loopY && mouseY<loopY+loopHeight) {
    click.play();
    click.rewind();
    if (loopOn == true) {
      loopOn = false;
    } else if (shuffleOn == true && loopOn == false) {
      loopOn=true;
      shuffleOn = false;
    } else {
      loopOn = true;
    }
  }
}
