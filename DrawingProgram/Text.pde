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
