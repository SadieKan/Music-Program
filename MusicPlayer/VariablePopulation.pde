void variablePopulation() {
  //Colours
  lightGray = #d0d5e2;
  lightTeal = #829eae;
  teal = #2f4550;
  blueGray = #a3bdcc;
  darkBlueGray = #9eaeb6;
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
  //Time Display
  //songMetaData[i].length()/1000/60, "minutes", (songMetaData[i].length()/1000)-(songMetaData[i].length()/1000/60 *60), "setimeX = songPlayingX-rightColumnWidth*4/50;
  timeX = songPlayingX-rightColumnWidth*4/50;
  timeX2 = songPlayingX+songPlayingWidth+rightColumnWidth*1/50;
  timeY = height*39/50;
  timeWidth = rightColumnWidth*3/50;
  timeHeight = height*2/50;


  //Music Controls
  rewindButton = loadImage ("../Images/rewindWhite.png"); //Dimensions: 300 Width, 300 Height
  forwardButton = loadImage ("../Images/forwardWhite.png"); //Dimensions: 300 Width, 300 Height
  playButton = loadImage ("../Images/playWhite.png"); //Dimensions: 300 Width, 300 Height
  pauseButton = loadImage ("../Images/pauseWhite.png"); //Dimensions: 300 Width, 300 Height
  nextButton = loadImage ("../Images/nextWhite.png"); //Dimensions: 300 Width, 300 Height
  backButton = loadImage ("../Images/backWhite.png"); //Dimensions: 300 Width, 300 Height
  shuffleButton = loadImage ("../Images/shuffleWhite.png"); //Dimensions: 300 Width, 300 Height
  loopButton = loadImage ("../Images/loopWhite.png"); //Dimensions: 300 Width, 300 Height
  shuffleButton2 = loadImage ("../Images/shuffleTeal.png"); //Dimensions: 300 Width, 300 Height
  loopButton2 = loadImage ("../Images/loopTeal.png"); //Dimensions: 300 Width, 300 Height
  //
  rewindX = songPlayingX+songPlayingWidth*11/60;
  rewindY = height*29/40;
  rewindWidth = songPlayingWidth*5/60;
  rewindHeight = rewindWidth;
  //
  forwardX = songPlayingX+songPlayingWidth*44/60;
  forwardY = rewindY;
  forwardWidth = songPlayingWidth*5/60;
  forwardHeight = forwardWidth;
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
  //
  shuffleX = songPlayingX;
  shuffleY = height*69/80;
  shuffleWidth = songPlayingWidth*6/45;
  shuffleHeight = songPlayingWidth*4/45;
  //
  loopX = songPlayingX+songPlayingWidth*39/45;
  loopY = height*69/80;
  loopWidth = songPlayingWidth*6/45;
  loopHeight = songPlayingWidth*4/45;


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
