void minimSetup() {
  minim = new Minim(this);
  song[0] = minim.loadFile("../Music + Sound Effects/Joji - SLOW DANCING IN THE DARK.mp3"); 
  song[1] = minim.loadFile("../Music + Sound Effects/Jeremy Zucker - comethru (Official Video).mp3");
  song[2] = minim.loadFile("../Music + Sound Effects/Khalid - Better (Official Video).mp3");
  song[3] = minim.loadFile("../Music + Sound Effects/BTS - Life Goes On.mp3");
  song[4] = minim.loadFile("../Music + Sound Effects/Gaho - Stay Here.mp3");
  //
  click = minim.loadFile("../Music + Sound Effects/Mouse Click.mp3");
}
