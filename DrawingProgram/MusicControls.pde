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
  border();
  fill(salmon);
  rect(playPauseX, musicControlsY, playPauseWidth, musicControlsHeight);
  reset();
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
  border();
  fill(salmon);
  rect(restartMusicX, musicControlsY, restartMusicWidth, musicControlsHeight);
  reset();
}
