void quitButton() {
  if (mouseX>quitButtonX  && mouseX<quitButtonX+quitButtonWidth  && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    stroke (darkBlue);
    fill (darkBlue);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill (white);
    stroke (black);
  } else {
    stroke (midnightBlue);
    fill (midnightBlue);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill (white);
    stroke (black);
  }
}
