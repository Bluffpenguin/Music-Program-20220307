void backButtonArrayCatch() {
  if ( currentSong <= 0) {//CATCH ArrayIndexOutOfBoundsException
    currentSong = song.length-1;
  } else {
    currentSong--; //Error if greater than 2
  }//End of CATCH
}//End
