void variablePopulation() {
  //Left Column
  leftColumnX = 0;
  leftColumnY = 0;
  leftColumnWidth = width*1/3;
  leftColumnHeight = height*11/60;
  leftColumnHeaderHeight = height*1/12;
  //Song Boxes
  //Pictures
  /*
  pic1
   pic2
   pic3
   pic4
   pic5
   */
  //Boxes for Text


  //Right Column
  rightColumnX = leftColumnWidth;
  rightColumnWidth = width-(leftColumnWidth);
  //Album Cover Display
  songPlayingX = rightColumnX+rightColumnWidth*1/4;
  songPlayingY = height*1/9;
  songPlayingWidth = rightColumnWidth*2/4;
  songPlayingHeight = height*5/9;
  
  
  //Quit Button
  quitButtonX = rightColumnX+rightColumnWidth*14/16;
  quitButtonY = songPlayingY*1/4;
  quitButtonWidth = rightColumnWidth*1/16;
  quitButtonHeight = songPlayingY*1/2;
}
