//Global Variables
String songHeading = "Songs:";

void leftColumn() {
  //Main Boxes
  border();
  rect(leftColumnX, leftColumnY, leftColumnWidth, height);
  fill(darkGray2);
  rect(leftColumnX, leftColumnY, leftColumnWidth, leftColumnHeaderHeight);
  fill(white);
  fill(gray);
  rect(leftColumnX, leftColumnY+height*1/12, leftColumnWidth, leftColumnHeight);
  rect(leftColumnX, leftColumnY+height*16/60, leftColumnWidth, leftColumnHeight);
  rect(leftColumnX, leftColumnY+height*27/60, leftColumnWidth, leftColumnHeight);
  rect(leftColumnX, leftColumnY+height*38/60, leftColumnWidth, leftColumnHeight);
  rect(leftColumnX, leftColumnY+height*49/60, leftColumnWidth, leftColumnHeight);
  reset();
  //Song Heading
  songHeadingText();
  song1Text();
  image(pic1, leftColumnX, leftColumnY+height*1/12, leftColumnHeight, leftColumnHeight);
  //
  song2Text();
  image(pic2, leftColumnX, leftColumnY+height*16/60, leftColumnHeight, leftColumnHeight);
  //
  song3Text();
  image(pic3, leftColumnX, leftColumnY+height*27/60, leftColumnHeight, leftColumnHeight);
  //
  song4Text();
  image(pic4, leftColumnX, leftColumnY+height*38/60, leftColumnHeight, leftColumnHeight);
  //
  song5Text();
  image(pic5, leftColumnX, leftColumnY+height*49/60, leftColumnHeight, leftColumnHeight);
  //
  border();
  line(0, 0, 0, height);
  line(0, leftColumnY+height*1/12, leftColumnWidth, leftColumnY+height*1/12);
  line(0, leftColumnY+height*16/60, leftColumnWidth, leftColumnY+height*16/60);
  line(0, leftColumnY+height*27/60, leftColumnWidth, leftColumnY+height*27/60);
  line(0, leftColumnY+height*38/60, leftColumnWidth, leftColumnY+height*38/60);
  line(0, leftColumnY+height*49/60, leftColumnWidth, leftColumnY+height*49/60);
  line(0, height, leftColumnWidth, height);
  reset();
}
