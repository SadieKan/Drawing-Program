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
  if (mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY+topRowHeight && mouseY<topRowY+topRowHeight+topRowHeight) {
    drawOn = true;
    eraserOn = false;
    eraser = false;
  }
  if (mouseX>backgroundColourX && mouseX<backgroundColourX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    dropdown1 = true;
  } else {
    dropdown1 = false;
  }
}
//Canvas Colour Selection
void canvasColourPressed() {
  if (mouseX>canvasColourDropdownX && mouseX<canvasColourDropdownX+topRowWidth  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+topRowHeight) {
    canvasWhite = true;
    ink = black;
    println("Canvas is now white");
  } else {
    canvasWhite = false;
  }
  if (mouseX>canvasColourDropdownX2 && mouseX<canvasColourDropdownX2+canvasColourDropdownWidth/5  && mouseY>canvasColourDropdownY && mouseY<canvasColourDropdownY+canvasColourDropdownHeight/3) {
    canvasBlack = true;
    ink = white;
    println("Canvas is now black");
  } else {
    canvasBlack = false;
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
