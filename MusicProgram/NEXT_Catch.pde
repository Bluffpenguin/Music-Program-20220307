void nextButtonArrayCatch() {
  if ( currentSong >= song.length-1) {//CATCH ArrayIndexOutOfBoundsException
    currentSong -= currentSong;
  } else {
    currentSong++; //Error if greater than 2
  }//End of CATCH
}//End
