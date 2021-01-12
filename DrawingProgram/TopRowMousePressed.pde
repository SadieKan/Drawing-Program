//Top Row Buttons
void topRowMousePressed() {
  if (mouseX>lineArtX && mouseX<lineArtX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    lineArt1 = true;
    lineArt2 = false;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
  }
  if (mouseX>lineArt2X && mouseX<lineArt2X+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    lineArt1 = false;
    lineArt2 = true;
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
  }
  if (mouseX>eraserButtonX && mouseX<eraserButtonX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    eraserOn = true;
    drawOn = false;
    draw = false;
  }
  if (mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    dropdown2 = true;
  } else {
    dropdown2 = false;
  }
  if (mouseX<drawingToolsX+topRowWidth && mouseY>topRowY+topRowHeight && mouseY<topRowY+topRowHeight+topRowHeight) {
    drawOn = true;
    eraserOn = false;
    eraser = false;
  }
}
//Canvas Colour Selection
void canvasColourPressed() {
  if (mouseX<backgroundColourX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    dropdown1 = true;
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX && mouseX<canvasColourDropdownX+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    canvasWhite = true;
    ink = black;
    println("Canvas is now white");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX2 && mouseX<canvasColourDropdownX2+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    canvasBlack = true;
    ink = white;
    println("Canvas is now black"); //this was used for troubleshooting
  } else if (dropdown1 == true && mouseX<canvasColourDropdownX3+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    canvasGray = true;
    println("Canvas is now gray");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX4 && mouseX<canvasColourDropdownX4+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    canvasRed = true;
    println("Canvas is now red");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX && mouseX<canvasColourDropdownX+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    canvasBlue = true;
    println("Canvas is now blue");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX2 && mouseX<canvasColourDropdownX2+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    canvasPurple = true;
    println("Canvas is now purple");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX3 && mouseX<canvasColourDropdownX3+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    canvasPink = true;
    println("Canvas is now pink");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX4 && mouseX<canvasColourDropdownX4+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY2 && mouseY<canvasColourDropdownY2+canvasColourDropdownHeight/3) {
    canvasOrange = true;
    println("Canvas is now orange");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX && mouseX<canvasColourDropdownX+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    canvasGreen = true;
    println("Canvas is now green");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX2 && mouseX<canvasColourDropdownX2+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    canvasTeal = true;
    println("Canvas is now teal");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX3 && mouseX<canvasColourDropdownX3+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    canvasLime = true;
    println("Canvas is now lime");
  } else if (dropdown1 == true && mouseX>canvasColourDropdownX4 && mouseX<canvasColourDropdownX4+canvasColourDropdownWidth/4  && mouseY>canvasColourDropdownY3 && mouseY<canvasColourDropdownY3+canvasColourDropdownHeight/3) {
    canvasYellow = true;
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
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    drawOn = false;
    eraserOn = false;
    lineArt1 = false;
    lineArt2 = false;
  }
}
