//Global Variables
String quit= "X";

void quitButton() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    border();
    fill(lightGray);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    reset();
    fill(black);
    quitButtonText();
    reset();
  } else {
    border();
    fill(black);
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
