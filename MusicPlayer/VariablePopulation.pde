void variablePopulation() {
  //Colours
  lightGray = #d1d7e0;
  gray = #9094a0;
  darkGray = #2b2a2e;
  darkGray2 = #54575e;

  //Left Column
  leftColumnX = 0;
  leftColumnY = 0;
  leftColumnWidth = width*1/3;
  leftColumnHeight = height*11/60;
  leftColumnHeaderHeight = height*1/12;
  //Pictures
  pic1 = loadImage ("../Images/slowDancingInTheDark.jpg"); //Dimensions: 564 Width, 564 Height
  pic2 = loadImage ("../Images/comeThru.jpg"); //Dimensions: 640 Width, 640 Height
  pic3 = loadImage ("../Images/better.jpg"); //Dimensions: 564 Width, 564 Height
  pic4 = loadImage ("../Images/lifeGoesOn.jpg"); //Dimensions: 564 Width, 564 Height
  pic5 = loadImage ("../Images/stayHere.jpg"); //Dimensions: 564 Width, 564 Height
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
