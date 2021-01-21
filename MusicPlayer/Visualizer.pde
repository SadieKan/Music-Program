void visualizer() {
  pushMatrix();
  translate(songPlayingX+songPlayingWidth*1/10, height*49/80);//where 0,0 is now

  //circle in center
  beat.detect(song[currentSong].mix);
  if (currentSong == 3) {
    stroke(black);
    fill(0, 0, 0, 120);
  } else {
    stroke(white);
    fill(255, 255, 255, 120);
  }
  if (beat.isOnset()) { 
    radius = radius*0.9;
  } else {
    radius = songPlayingWidth*1/15;
    ellipse(0, 0, 2*radius, 2*radius);
  }
  reset();

  //circular visualizer
  int bsize = song[currentSong].bufferSize();
  if (currentSong == 3) {
    stroke(black);
  } else {
    stroke(white);
  }
  for (int i = 0; i < bsize - 1; i+=10) //higher number = less lines around the circle
  {
    float x = ((r)*cos(i*2*PI/bsize))/5; //makes the start of the lines closer to the center
    float y = ((r)*sin(i*2*PI/bsize))/5;
    float x2 = (r + song[currentSong].left.get(i)*50)*(cos(i*2*PI/bsize)/5); //makes the lines shorter
    float y2 = (r + song[currentSong].left.get(i)*50)*(sin(i*2*PI/bsize)/5);
    line(x, y, x2, y2);
  }
  reset();
  popMatrix();
}
