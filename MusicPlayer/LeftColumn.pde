void leftColumn() {
  border();
  rect(leftColumnX, leftColumnY, leftColumnWidth, height);
  fill(darkGray);
  rect(leftColumnX, leftColumnY, leftColumnWidth, leftColumnHeaderHeight);
  fill(white);
  fill(gray);
  rect(leftColumnX, leftColumnY+height*1/12, leftColumnWidth, leftColumnHeight);
  rect(leftColumnX, leftColumnY+height*16/60, leftColumnWidth, leftColumnHeight);
  rect(leftColumnX, leftColumnY+height*27/60, leftColumnWidth, leftColumnHeight);
  rect(leftColumnX, leftColumnY+height*38/60, leftColumnWidth, leftColumnHeight);
  rect(leftColumnX, leftColumnY+height*49/60, leftColumnWidth, leftColumnHeight);
  reset();
  /*
  rect(); //Song Heading
   songHeadingText();
   //
   rect();
   song1Text();
   image();
   //
   rect();
   song2Text();
   image();
   //
   rect();
   song3Text();
   image();
   //
   rect();
   song4Text();
   image();
   //
   rect();
   song5Text();
   image();
   */
}
