void variablePopulation() {
  //Colours
  lightGray = #d1d7e0;
  gray = #9692a0;
  darkGray = #6d6a74;
  darkGray2 = #2b2a2e;
  
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
  quitButtonHeight = rightColumnWidth*1/16;
}

void border() {
  strokeWeight(2);
  stroke(lightGray);
}

void reset() {
  strokeWeight(1);
  stroke(black);
  fill(white);
}
