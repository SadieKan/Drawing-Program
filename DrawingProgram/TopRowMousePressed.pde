//Top Row Buttons
void topRowMousePressed() {
  if (mouseX>lineArtX && mouseX<lineArtX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    song[0].play();
    song[0].rewind();
    lineArt1 = true;
    lineArt2 = false;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
  }
  if (mouseX>lineArt2X && mouseX<lineArt2X+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    song[0].play();
    song[0].rewind();
    lineArt1 = false;
    lineArt2 = true;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
  }
  if (mouseX>eraserButtonX && mouseX<eraserButtonX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    song[0].play();
    song[0].rewind();
    eraserOn = true;
    drawOn = false;
    draw = false;
    circleOn = false;
    circle = false;
    squareOn = false;
    square = false;
    triangleOn = false;
    triangle = false;
  }
  if (mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    song[0].play();
    song[0].rewind();
    dropdown2 = true;
  } else {
    dropdown2 = false;
  }
  if (mouseX<drawingToolsX+topRowWidth && mouseY>topRowY+topRowHeight && mouseY<topRowY+topRowHeight+topRowHeight) {
    song[0].play();
    song[0].rewind();
    drawOn = true;
    eraserOn = false;
    eraser = false;
    circleOn = false;
    circle = false;
    squareOn = false;
    square = false;
    triangleOn = false;
    triangle = false;
  }
}
//Canvas Colour Selection
void canvasColourPressed() {
  if (mouseX<backgroundColourX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    song[0].play();
    song[0].rewind();
    dropdown1 = true;
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX && mouseX<canvasColourDropdownX+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasWhite = true;
    if (ink == white) ink=black;
    println("Canvas is now white");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX2 && mouseX<canvasColourDropdownX2+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasBlack = true;
    if (ink == black) ink=white;
    println("Canvas is now black"); //this was used for troubleshooting
  } else if (dropdown1 == true && mouseX<canvasColourDropdownX3+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasGray = true;
    if (ink == gray) ink=black;
    println("Canvas is now gray");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX4 && mouseX<canvasColourDropdownX4+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasRed = true;
    if (ink == red) ink=black;
    println("Canvas is now red");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX && mouseX<canvasColourDropdownX+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasBlue = true;
    if (ink == blue2) ink=black;
    println("Canvas is now blue");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX2 && mouseX<canvasColourDropdownX2+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasPurple = true;
    if (ink == purple) ink=black;
    println("Canvas is now purple");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX3 && mouseX<canvasColourDropdownX3+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasPink = true;
    if (ink == pink) ink=black;
    println("Canvas is now pink");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX4 && mouseX<canvasColourDropdownX4+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasOrange = true;
    if (ink == orange) ink=black;
    println("Canvas is now orange");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX && mouseX<canvasColourDropdownX+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasGreen = true;
    if (ink == green) ink=black;
    println("Canvas is now green");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX2 && mouseX<canvasColourDropdownX2+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasTeal = true;
    if (ink == teal) ink=black;
    println("Canvas is now teal");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX3 && mouseX<canvasColourDropdownX3+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasLime = true;
    if (ink == lime) ink=black;
    println("Canvas is now lime");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX4 && mouseX<canvasColourDropdownX4+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    song[0].play();
    song[0].rewind();
    canvasYellow = true;
    if (ink == yellow) ink=black;
    println("Canvas is now yellow");
  } else {
    dropdown1 = false;
  }
}



//Quit and Restart Buttons
void mainControlsPressed() {
  if (mouseX>quitButtonX  && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    exit();
  }
  if (mouseX>restartX && mouseX<restartX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    song[0].play();
    song[0].rewind();
    canvasColour = white;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    drawOn = false;
    draw = false;
    eraserOn = false;
    eraser = false;
    lineArt1 = false;
    lineArt2 = false;
    circleOn = false;
    circle = false;
    squareOn = false;
    square = false;
    triangleOn = false;
    triangle = false;
    penThickness = 2;
    eraserThickness = 20;
    ink = black;
  }
}
