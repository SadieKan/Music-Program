void musicPlayerDemo() {
  if (key == 'p' || key == 'P') {//Play-Pause Button
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
    } else if (song[currentSong].position() == song[currentSong].length()) {//.length() = length of song/end of song
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play(); //.play is the audio player function
    }
  } //End Play-Pause Button
  //
  if (key == 's' || key == 'S') {
    if (song[currentSong].isPlaying()) {//Stop Button
      song[currentSong].pause();
      song[currentSong].rewind();
    } else if (song[currentSong].position() == song[currentSong].length()) {//.length() = length of song/end of song
      song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }
  }//End of Stop Button
  //
  if (key == 'f' || key == 'F') song[currentSong].skip(1000); //End Fast Forward //you have to use milliseconds (1000 miliseconds = 1 second)
  if (key == 'r' || key == 'R') song[currentSong].skip(-1000); //End Rewind 1 second
  //
  if (key == 'l' || key == 'L') song[currentSong].loop(loopIntNum); //Loop Button
  //
  //Next Button
  if (key == 'n' || key == 'N') {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numberOfSongs-1) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++; //Adds 1 to the current song number
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if (currentSong == numberOfSongs-1) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++;
      }
    }
  }//End Next Button
  //
  //Previous Button (Backwards on Play List)
  if (key == 'b' || key == 'B') {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numberOfSongs - numberOfSongs) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--; //Adds 1 to the current song number
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if (currentSong == numberOfSongs - numberOfSongs) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
    }
  }//End Previous Button
}

/*
void minimSetup2() {  
  minim = new Minim(this); //Creates object in processing
  //Array variables based on operators to describe 0, 1, 2
  song[currentSong] = minim.loadFile("../Music/Joji - SLOW DANCING IN THE DARK.mp3"); //song1 is the name of the playlist //able to pass absolute path, file name, and URL //remember to add ".." for it to go out of the folder
  song[currentSong+=1] = minim.loadFile("../Music/Jeremy Zucker - comethru (Official Video).mp3");
  song[currentSong+=1] = minim.loadFile("../Music/Khalid - Better (Official Video).mp3");
  //
  click = minim.loadFile("../Music/Mouse Click.mp3");
  //using pattern in FOR loop
  //
  currentSong = numberOfSongs - numberOfSongs;
  for (int i=0; i<numberOfSongs; i++) { //local variable //makes the i count //repeats it 2000 times
    songMetaData[i] = song[i].getMetaData();
  } //end FOR loop, loading Meta Data
  //
  println("Start of Console"); //if you can't see this, the output to console is too long //solution: decrease println or increase memory
  println("Click the Console to Finish Starting this program"); //Windows expects you to click into the window
  println("Press keyboard to test: P, etc.");
  //
  for ( int i=currentSong; i<numberOfSongs; i++) { //Reminder: you can change the metadata of the song through properties
    println("File Name: ", songMetaData[i].fileName());
    println("Song Length (in milliseconds): ", songMetaData[i].length() );
    println("Song Length (in seconds): ", songMetaData[i].length()/1000 );
    println("Song Length (in minutes and seconds): ", songMetaData[i].length()/1000/60, "minutes", (songMetaData[i].length()/1000)-(songMetaData[i].length()/1000/60 *60), "seconds" );
    println("Song Title: ", songMetaData[i].title() );
    println("Author: ", songMetaData[i].author() );
    println("Composer: ", songMetaData[i].composer() );
    println("Orchestra: ", songMetaData[i].orchestra() );
    println("Albums: ", songMetaData[i].album() );
    println("Disk: ", songMetaData[i].disc() );
    println("Publisher: ", songMetaData[i].publisher() );
    println("Date Released: ", songMetaData[i].date() );
    println("Copyright: ", songMetaData[i].copyright() );
    println("Comments: ", songMetaData[i].comment() );
    println("Lyrics: ", songMetaData[i].lyrics() );
    println("Track Number: ", songMetaData[i].track() );
    println("Genre: ", songMetaData[i].genre() );
    println("Encoded: ", songMetaData[i].encoded() );
  }
}
*/
