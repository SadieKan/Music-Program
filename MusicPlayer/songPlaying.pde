String songPlayedText = songPosition/1000/60 + ":" + ((songPosition/1000)-(songPosition/1000/60 *60));

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
  /*
  rect(timeX, timeY, timeWidth, timeHeight);
   rect(timeX2, timeY, timeWidth, timeHeight);
   fill(black);
   songPLayedTimeText();
   songLengthText();
   reset();
   */
}
