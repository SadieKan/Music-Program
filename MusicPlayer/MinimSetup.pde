void minimSetup() {
  minim = new Minim(this); //Creates object in processing
  song1 = minim.loadFile("../Music/Simple - Patrick Patrikios.mp3"); //song1 is the name of the playlist //able to pass absolute path, file name, and URL //remember to add ".." fpr it to go out of the folder
}
