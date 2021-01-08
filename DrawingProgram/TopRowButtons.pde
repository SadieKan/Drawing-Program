//Global Variables
String restart= "Restart Canvas", eraserText= "Eraser", drawingToolsText= "Drawing Tools";

//Restart Canvas
void restartCanvas() {
  if (mouseX>restartX && mouseX<restartX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(restartX, topRowY, topRowWidth, topRowHeight);
    reset();
    restartButtonText();
  } else {
    border();
    fill(blue);
    rect(restartX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    restartButtonText();
    reset();
  }
} //End of Restart Canvas

//Line Art
void lineArt() { 
  if (mouseX>lineArtX && mouseX<lineArtX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) { //Line Art 1 = totoro
    fill(darkBlue);
    rect(lineArtX, topRowY, topRowWidth, topRowHeight);
    reset();
  } else {
    border();
    fill(blue);
    rect(lineArtX, topRowY, topRowWidth, topRowHeight);
    reset();
  }
  if (mouseX>lineArt2X && mouseX<lineArt2X+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) { //Line Art 2 = pooh
    fill(darkBlue);
    rect(lineArt2X, topRowY, topRowWidth, topRowHeight);
    reset();
  } else {
    border();
    fill(blue);
    rect(lineArt2X, topRowY, topRowWidth, topRowHeight);
    reset();
  }
} //End of Line Art

//Eraser
void eraser() {
  if (mouseX>eraserX && mouseX<eraserX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(eraserX, topRowY, topRowWidth, topRowHeight);
    reset();
    eraserButtonText();
  } else {
    border();
    fill(blue);
    rect(eraserX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    eraserButtonText();
    reset();
  }
} //End of Eraser

//Drawing Tools (Pen, Spray Paint, and hopefully Paint Bucket (flood fill)
void drawingTools() {
  if (mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(drawingToolsX, topRowY, topRowWidth, topRowHeight);
    reset();
    drawingToolsText();
  } else {
    border();
    fill(blue);
    rect(drawingToolsX, topRowY, topRowWidth, topRowHeight);
    reset();
    fill(darkBlue);
    drawingToolsText();
    reset();
  }
  strokeWeight(2);
  stroke(darkBlue);
  toolsDropDown();
} //End of Drawing Tools

//Background Colour // Changes the colour of the canvas
void backgroundColour() {
  if (mouseX>backgroundColourX && mouseX<backgroundColourX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    fill(darkBlue);
    rect(backgroundColourX, topRowY, topRowWidth, topRowHeight);
    reset();
  } else {
    border();
    fill(blue);
    rect(backgroundColourX, topRowY, topRowWidth, topRowHeight);
    reset();
  }
} //End of Background Colour
