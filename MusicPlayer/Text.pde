void textSetup() {
  buttonFont = createFont ("BrowalliaNew-Bold", 20);
}



void quitButtonText() {
  textAlign (CENTER, TOP);
  textFont(buttonFont, 50);
  text(quit, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}



void songHeadingText() {
  textAlign (LEFT, TOP);
  textFont(buttonFont, 55);
  text(songHeading, leftColumnX+leftColumnWidth/20, leftColumnY, leftColumnWidth, leftColumnHeaderHeight);
}
void song1Text() {
  textAlign (LEFT, TOP);
  textFont(buttonFont, 30);
  text(songMetaData[0].title(), leftColumnX+leftColumnWidth/3, leftColumnY+height*1/12+(leftColumnHeight/25), leftColumnWidth, leftColumnHeight);
}
void song1Text2() {
  textAlign (LEFT, TOP);
  textFont(buttonFont, 18);
  text(songMetaData[0].author(), leftColumnX+leftColumnWidth/3, leftColumnY+height*1/12+(leftColumnHeight*7/25), leftColumnWidth, leftColumnHeight);
  text(songMetaData[0].album(), leftColumnX+leftColumnWidth/3, leftColumnY+height*1/12+(leftColumnHeight*11/25), leftColumnWidth, leftColumnHeight);
  text(songMetaData[0].genre(), leftColumnX+leftColumnWidth/3, leftColumnY+height*1/12+(leftColumnHeight*15/25), leftColumnWidth, leftColumnHeight);
}
void song2Text() {
  textAlign (LEFT, TOP);
  textFont(buttonFont, 30);
  text(songMetaData[1].title(), leftColumnX+leftColumnWidth/3, leftColumnY+height*16/60+(leftColumnHeight/25), leftColumnWidth, leftColumnHeight);
}
void song2Text2() {
  textAlign (LEFT, TOP);
  textFont(buttonFont, 18);
  text(songMetaData[1].author(), leftColumnX+leftColumnWidth/3, leftColumnY+height*16/60+(leftColumnHeight*7/25), leftColumnWidth, leftColumnHeight);
  text(songMetaData[1].album(), leftColumnX+leftColumnWidth/3, leftColumnY+height*16/60+(leftColumnHeight*11/25), leftColumnWidth, leftColumnHeight);
  text(songMetaData[1].genre(), leftColumnX+leftColumnWidth/3, leftColumnY+height*16/60+(leftColumnHeight*15/25), leftColumnWidth, leftColumnHeight);
}
void song3Text() {
  textAlign (LEFT, TOP);
  textFont(buttonFont, 30);
  text(songMetaData[2].title(), leftColumnX+leftColumnWidth/3, leftColumnY+height*27/60+(leftColumnHeight/25), leftColumnWidth, leftColumnHeight);
}
void song3Text2() {
  textAlign (LEFT, TOP);
  textFont(buttonFont, 18);
  text(songMetaData[2].author(), leftColumnX+leftColumnWidth/3, leftColumnY+height*27/60+(leftColumnHeight*7/25), leftColumnWidth, leftColumnHeight);
  text(songMetaData[2].album(), leftColumnX+leftColumnWidth/3, leftColumnY+height*27/60+(leftColumnHeight*11/25), leftColumnWidth, leftColumnHeight);
  text(songMetaData[2].genre(), leftColumnX+leftColumnWidth/3, leftColumnY+height*27/60+(leftColumnHeight*15/25), leftColumnWidth, leftColumnHeight);
}
void song4Text() {
  textAlign (LEFT, TOP);
  textFont(buttonFont, 30);
  text(songMetaData[3].title(), leftColumnX+leftColumnWidth/3, leftColumnY+height*38/60+(leftColumnHeight/25), leftColumnWidth, leftColumnHeight);
}
void song4Text2() {
  textAlign (LEFT, TOP);
  textFont(buttonFont, 18);
  text(songMetaData[3].author(), leftColumnX+leftColumnWidth/3, leftColumnY+height*38/60+(leftColumnHeight*7/25), leftColumnWidth, leftColumnHeight);
  text(songMetaData[3].album(), leftColumnX+leftColumnWidth/3, leftColumnY+height*38/60+(leftColumnHeight*11/25), leftColumnWidth, leftColumnHeight);
  text(songMetaData[3].genre(), leftColumnX+leftColumnWidth/3, leftColumnY+height*38/60+(leftColumnHeight*15/25), leftColumnWidth, leftColumnHeight);
}
void song5Text() {
  textAlign (LEFT, TOP);
  textFont(buttonFont, 30);
  text(songMetaData[4].title(), leftColumnX+leftColumnWidth/3, leftColumnY+height*49/60+(leftColumnHeight/25), leftColumnWidth, leftColumnHeight);
}
void song5Text2() {
  textAlign (LEFT, TOP);
  textFont(buttonFont, 18);
  text(songMetaData[4].author(), leftColumnX+leftColumnWidth/3, leftColumnY+height*49/60+(leftColumnHeight*7/25), leftColumnWidth, leftColumnHeight);
  text(songMetaData[4].album(), leftColumnX+leftColumnWidth/3, leftColumnY+height*49/60+(leftColumnHeight*11/25), leftColumnWidth, leftColumnHeight);
  text(songMetaData[4].genre(), leftColumnX+leftColumnWidth/3, leftColumnY+height*49/60+(leftColumnHeight*15/25), leftColumnWidth, leftColumnHeight);
}



void songTitleText() {
  textAlign (CENTER, TOP);
  textFont(buttonFont, 40);
  text(songMetaData[currentSong].title(), rightColumnX, height*2/3, rightColumnWidth, height);
}

void songArtistText() {
  textAlign (CENTER, TOP);
  textFont(buttonFont, 25);
  text(songMetaData[currentSong].author(), rightColumnX, height*35/48, rightColumnWidth, height);
}
