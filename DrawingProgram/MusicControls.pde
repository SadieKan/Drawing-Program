//Global Variables
String song1Text = "Slow Dancing in the Dark", song2Text = "Come Thru", song3Text = "Better";

void minimSetup() {
  minim = new Minim(this);
  song[0] = minim.loadFile("../Sound Effects + Music/Joji - SLOW DANCING IN THE DARK.mp3"); 
  song[1] = minim.loadFile("../Sound Effects + Music/Jeremy Zucker - comethru (Official Video).mp3");
  song[2] = minim.loadFile("../Sound Effects + Music/Khalid - Better (Official Video).mp3");
  //
  click = minim.loadFile("../Sound Effects + Music/Mouse Click.mp3");
}

void playPauseButton() {
  if (mouseX>playPauseX && mouseX<playPauseX+playPauseWidth && mouseY>musicControlsY && mouseY<musicControlsY+musicControlsHeight) {
    if (song[0].isPlaying() | song[1].isPlaying() | song[2].isPlaying()) {
      border();
      fill(darkBlue);
      rect(playPauseX, musicControlsY, playPauseWidth, musicControlsHeight);
      reset();
      image(pauseIcon2, playPauseX+playPauseWidth*1/9, musicControlsY+musicControlsHeight*1/16, imageWidth3*1/12, imageHeight3*1/12);
    } else {
      border();
      fill(darkBlue);
      rect(playPauseX, musicControlsY, playPauseWidth, musicControlsHeight);
      reset();
      image(playIcon2, playPauseX+playPauseWidth*1/7, musicControlsY+musicControlsHeight*1/16, imageWidth3*1/12, imageHeight3*1/12);
    }
  } else {
    if (song[0].isPlaying() | song[1].isPlaying() | song[2].isPlaying()) {
      border();
      fill(salmon);
      rect(playPauseX, musicControlsY, playPauseWidth, musicControlsHeight);
      reset();
      image(pauseIcon, playPauseX+playPauseWidth*1/9, musicControlsY+musicControlsHeight*1/16, imageWidth3*1/12, imageHeight3*1/12);
    } else {
      border();
      fill(salmon);
      rect(playPauseX, musicControlsY, playPauseWidth, musicControlsHeight);
      reset();
      image(playIcon, playPauseX+playPauseWidth*1/7, musicControlsY+musicControlsHeight*1/16, imageWidth3*1/12, imageHeight3*1/12);
    }
  }
}


void songOptions() {
  border();
  fill(blue);
  rect(song1X, musicControlsY, songWidth, musicControlsHeight);
  rect(song2X, musicControlsY, songWidth, musicControlsHeight);
  rect(song3X, musicControlsY, songWidth, musicControlsHeight);
  reset();
  fill(darkBlue);
  song1Text();
  song2Text();
  song3Text();
  reset();
}

void restartMusic() {
  if (mouseX>restartMusicX && mouseX<restartMusicX+restartMusicWidth && mouseY>musicControlsY && mouseY<musicControlsY+musicControlsHeight) {
    border();
    fill(darkBlue);
    rect(restartMusicX, musicControlsY, restartMusicWidth, musicControlsHeight);
    reset();
    image(rewindIcon2, restartMusicX+playPauseWidth*1/14, musicControlsY+musicControlsHeight*1/27, imageWidth3*1/11, imageHeight3*1/11);
  } else {
    border();
    fill(salmon);
    rect(restartMusicX, musicControlsY, restartMusicWidth, musicControlsHeight);
    reset();
    image(rewindIcon, restartMusicX+playPauseWidth*1/14, musicControlsY+musicControlsHeight*1/27, imageWidth3*1/11, imageHeight3*1/11);
  }
}
