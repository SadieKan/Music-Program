void minimSetup() {
  minim = new Minim(this);
  song[0] = minim.loadFile("../Music + Sound Effects/Joji - SLOW DANCING IN THE DARK.mp3"); 
  song[1] = minim.loadFile("../Music + Sound Effects/Jeremy Zucker - comethru (Official Video).mp3");
  song[2] = minim.loadFile("../Music + Sound Effects/Khalid - Better (Official Video).mp3");
  song[3] = minim.loadFile("../Music + Sound Effects/BTS - Life Goes On.mp3");
  song[4] = minim.loadFile("../Music + Sound Effects/Gaho - Stay Here.mp3");
  //
  click = minim.loadFile("../Music + Sound Effects/Mouse Click.mp3");
  //
  songMetaData[0] = song[0].getMetaData();
  songMetaData[1] = song[1].getMetaData();
  songMetaData[2] = song[2].getMetaData();
  songMetaData[3] = song[3].getMetaData();
  songMetaData[4] = song[4].getMetaData();

  //Beat Detection
  for ( int i=currentSong; i<numberOfSongs; i++) {
  fft = new FFT(song[i].bufferSize(), song[i].sampleRate());
  input = minim.getLineIn();
  beat = new BeatDetect(song[i].bufferSize(), song[i].sampleRate());
  beat.setSensitivity(200);
  bl = new BeatListener(beat, song[i]);
  }
}
