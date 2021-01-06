// Global Variables
color ink, black = #000000, white = #FFFFFF;
color backgroundColour, salmon, darkBlue, blue;
float canvasX, canvasY, canvasWidth, canvasHeight, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float topRowY, topRowWidth, topRowHeight, restartX, lineArtX, lineArt2X, eraserX, drawingToolsX, backgroundColourX;
float leftRowX, leftRowWidth, leftRowHeight, lineChoicesY, shapesY, brushSizesY, inkColoursY;
Boolean draw=false;

void setup() {
  fullScreen(); //landscape
  variablePopulation();
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
}

void draw() {
  if (draw == true) {
    fill(black);
    strokeWeight(2);
    line(mouseX, mouseY, pmouseX, pmouseY);
    reset();
  }
  //&& mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight //code doesn't work that well if the mouse is moving quickly(it draws outside of the canvas)

  boxes(); //prevents the drawing from getting out of the canvas, even when the mouse is moving quickly
  quitButton();
  restartCanvas();
  lineArt();
  eraser();
  drawingTools();
  backgroundColour();
  lineChoices();
  shapes();
  brushSizes();
  inkColours();
  //soundControlButtons();
}

void mousePressed() {
  if (mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight) {
    println("canvas");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
  if (mouseX>quitButtonX  && mouseX<quitButtonX+quitButtonWidth  && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    exit();
  }
  if (mouseX>restartX && mouseX<restartX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
  }
}
