void songPlaying() {
  border();
  fill(darkGray);
  rect(rightColumnX, 0, rightColumnWidth, height);
  rect(songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
  reset();
  //
  if (currentSong == 0) {
   image(pic1, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
   //song1Text();
   } else if (currentSong == 1) {
   image(pic2, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
   //song2Text();
   } else if (currentSong == 2) {
   image(pic3, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
   //song3Text();
   } else if (currentSong == 3) {
   image(pic4, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
   //song4Text();
   } else if (currentSong == 4) {
   image(pic5, songPlayingX, songPlayingY, songPlayingWidth, songPlayingHeight);
   //song5Text();
   }
   //
   border();
   line(songPlayingX, songPlayingY, songPlayingX+songPlayingWidth, songPlayingY);
   line(songPlayingX, songPlayingY, songPlayingX, songPlayingY+songPlayingHeight);
   reset();
}
