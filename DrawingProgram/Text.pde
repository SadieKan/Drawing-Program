void textSetup() {
  buttonFont = createFont ("ArialRoundedMTBold", 20);
}


//Top Row Buttons
void quitButtonText() {
  textAlign (CENTER, TOP);
  textFont(buttonFont, 35);
  text(quit, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}

void restartButtonText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(restart, restartX, topRowY, topRowWidth, topRowHeight);
}

void lineArt1Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(lineArt1Text, lineArtX, topRowY, topRowWidth, topRowHeight);
}
void lineArt2Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(lineArt2Text, lineArt2X, topRowY, topRowWidth, topRowHeight);
}

void eraserButtonText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(eraserText, eraserButtonX, topRowY, topRowWidth, topRowHeight);
}

void drawingToolsText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(drawingToolsText, drawingToolsX, topRowY, topRowWidth, topRowHeight);
}
void dropDown2Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(penText, drawingToolsX, topRowY+topRowHeight, topRowWidth, topRowHeight);
}

void canvasColourText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 20);
  text(canvasColourText, backgroundColourX, topRowY, topRowWidth, topRowHeight);
}
