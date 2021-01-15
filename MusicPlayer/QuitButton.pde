//Global Variables
String quit= "X";

void quitButton() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    border();
    fill(lightGray);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    reset();
    fill(darkGray);
    quitButtonText();
    reset();
  } else {
    border();
    fill(darkGray);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    reset();
    fill(lightGray);
    quitButtonText();
    reset();
  }
}

void quitButtonMouseClicked() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    exit();
  }
}
