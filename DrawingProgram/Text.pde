void textSetup() {
  buttonFont = createFont ("ArialRoundedMTBold", 55);
}

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

void eraserButtonText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 35);
  text(eraserText, eraserX, topRowY, topRowWidth, topRowHeight);
}

void drawingToolsText() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 25);
  text(drawingToolsText, drawingToolsX, topRowY, topRowWidth, topRowHeight);
}

void dropDown2Text() {
  textAlign (CENTER, CENTER);
  textFont(buttonFont, 35);
  text(penText, drawingToolsX, topRowY+topRowHeight, topRowWidth, topRowHeight);
}
