void textSetup() {
  buttonFont = createFont ("ArialRoundedMTBold", 20);
}

void quitButtonText() {
  textAlign (CENTER, TOP);
  textFont(buttonFont, 50);
  text(quit, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}

void songHeadingText() {
  textAlign (LEFT, CENTER);
  textFont(buttonFont, 30);
  text(songHeading, leftColumnX+leftColumnWidth/20, leftColumnY, leftColumnWidth, leftColumnHeaderHeight);
}
void song1Text() {
}
void song2Text() {
}
void song3Text() {
}
void song4Text() {
}
void song5Text() {
}
