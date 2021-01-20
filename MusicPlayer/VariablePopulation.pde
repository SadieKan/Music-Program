void variablePopulation() {
  //Colours
  lightGray = #d0d5e2;
  lightTeal = #829eae;
  teal = #2f4550;
  blueGray = #a2bdcc;
  darkGray = #33393d;

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


  //Right Column
  rightColumnX = leftColumnWidth;
  rightColumnWidth = width-(leftColumnWidth);
  //Album Cover Display
  songPlayingX = rightColumnX+rightColumnWidth*1/4;
  songPlayingY = height*1/9;
  songPlayingWidth = rightColumnWidth*2/4;
  songPlayingHeight = height*5/9;


  //Music Controls
  rewindButton = loadImage ("../Images/rewindWhite.png"); //Dimensions: 300 Width, 300 Height
  forwardButton = loadImage ("../Images/forwardWhite.png"); //Dimensions: 300 Width, 300 Height
  playButton = loadImage ("../Images/playWhite.png"); //Dimensions: 300 Width, 300 Height
  pauseButton = loadImage ("../Images/pauseWhite.png"); //Dimensions: 300 Width, 300 Height
  nextButton = loadImage ("../Images/nextWhite.png"); //Dimensions: 300 Width, 300 Height
  backButton = loadImage ("../Images/backWhite.png"); //Dimensions: 300 Width, 300 Height
  //
  
  //
  playPauseX = songPlayingX+songPlayingWidth*20/45;
  playPauseY = height*34/40;
  playPauseWidth = songPlayingWidth*5/45;
  playPauseHeight = playPauseWidth;
  //
  backX = songPlayingX+songPlayingWidth*11/45;
  backY = playPauseY;
  backWidth = songPlayingWidth*5/45;
  backHeight = backWidth;
  //
  nextX = songPlayingX+songPlayingWidth*29/45;
  nextY = playPauseY;
  nextWidth = songPlayingWidth*5/45;
  nextHeight = nextWidth;


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

void border2() {
  strokeWeight(2);
  stroke(darkGray);
}

void reset() {
  strokeWeight(1);
  stroke(black);
  fill(white);
}
