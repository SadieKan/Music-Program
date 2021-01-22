void songPlaying() {
  fill(black);
  rect(rightColumnX, 0, rightColumnWidth, height);
  rect(songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
  reset();

  //Image and Info for Current Song
  if (currentSong == 0) {
    image(pic1, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
  } else if (currentSong == 1) {
    image(pic2, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
  } else if (currentSong == 2) {
    image(pic3, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
  } else if (currentSong == 3) {
    image(pic4, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
  } else if (currentSong == 4) {
    image(pic5, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
  }
  songTitleText();
  fill(lightTeal);
  songArtistText();
  reset();


  //Line to Show Time
  stroke(white);
  strokeWeight(3);
  line(songPlayingX, height*8/10, songPlayingX+songPlayingWidth, height*8/10);
  reset();
  //
  for (int i = 0; i < song[currentSong].bufferSize() - 1; i++)
  {
  }
  float posx = map(song[currentSong].position(), songPlayingX, song[currentSong].length(), songPlayingX, songPlayingX+songPlayingWidth); //map(value, start1, stop1, start2, stop2);
  stroke(white);
  ellipse(posx, height*8/10, 20, 20);
  reset();
  //
  if (((song[currentSong].position()/1000)-(song[currentSong].position()/1000/60 *60)) < 10) {
    songPlayedTimeText();
  } else if (((song[currentSong].position()/1000)-(song[currentSong].position()/1000/60 *60)) >= 10) {
    songPlayedTimeText2();
  }
  //
  if (((songMetaData[currentSong].length()/1000)-(songMetaData[currentSong].length()/1000/60 *60)) < 10) {
    songLengthText();
  } else if (((songMetaData[currentSong].length()/1000)-(songMetaData[currentSong].length()/1000/60 *60)) >= 10) {
    songLengthText2();
  }


  //Automatically plays the next song after current song is over:
  if ( song[currentSong].position() >= song[currentSong].length()-1000 ) {
    if (shuffleOn == true) {
      song[currentSong].pause();
      song[currentSong].rewind();
      currentSong = int(random(0, 5)); 
      song[currentSong].play();
    } else if (loopOn == true) {
      song[currentSong].pause();
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      if (currentSong == 4) {
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong = 0; 
        song[currentSong].play();
      } else {
        song[currentSong].pause();
        song[currentSong].rewind();
        currentSong ++; 
        song[currentSong].play();
      }
    }
  }
}
