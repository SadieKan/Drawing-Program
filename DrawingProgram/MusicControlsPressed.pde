void playPausePressed() { 
  if (mouseX>playPauseX && mouseX<playPauseX+playPauseWidth && mouseY>musicControlsY && mouseY<musicControlsY+musicControlsHeight) {
    click.play();
    click.rewind();
    if (song1On == true) {
      if (song[0].isPlaying()) {
        song[0].pause();
      } else {
        song[0].play();
      }
    }
    if (song2On == true) {
      if (song[1].isPlaying()) {
        song[1].pause();
      } else {
        song[1].play();
      }
    }
    if (song3On == true) {
      if (song[2].isPlaying()) {
        song[2].pause();
      } else {
        song[2].play();
      }
    }
  }
}

void songsPressed() { 
  if (mouseX>song1X && mouseX<song1X+songWidth && mouseY>musicControlsY && mouseY<musicControlsY+musicControlsHeight) {
    click.play();
    click.rewind();
    song1On = true;
    song2On = false;
    song3On = false;
    if (song[1].isPlaying() | song[2].isPlaying()) {
      song[1].pause();
      song[2].pause();
      song[0].play();
      song[0].rewind();
    } else {
      song[0].play();
      song[0].rewind();
    }
  }
  if (mouseX>song2X && mouseX<song2X+songWidth && mouseY>musicControlsY && mouseY<musicControlsY+musicControlsHeight) { //there is a bit of silence at the start of the song
    click.play();
    click.rewind();
    song1On = false;
    song2On = true;
    song3On = false;
    if (song[0].isPlaying() | song[2].isPlaying()) {
      song[0].pause();
      song[2].pause();
      song[1].play();
      song[1].rewind();
    } else {
      song[1].play();
      song[1].rewind();
    }
  }
  if (mouseX>song3X && mouseX<song3X+songWidth && mouseY>musicControlsY && mouseY<musicControlsY+musicControlsHeight) {
    click.play();
    click.rewind();
    song1On = false;
    song2On = false;
    song3On = true;
    if (song[0].isPlaying() | song[1].isPlaying()) {
      song[0].pause();
      song[1].pause();
      song[2].play();
      song[2].rewind();
    } else {
      song[2].play();
      song[2].rewind();
    }
  }
}

void rewindMusicPressed() {
  if (mouseX>restartMusicX && mouseX<restartMusicX+restartMusicWidth && mouseY>musicControlsY && mouseY<musicControlsY+musicControlsHeight) { 
    click.play();
    click.rewind();
    if (song1On == true) {
      song[0].rewind();
    }
    if (song2On == true) {
      song[1].rewind();
    }
    if (song3On == true) {
      song[2].rewind();
    }
  }
}
