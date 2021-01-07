import controlP5.*; //currently testing in another processing project

// Global Variables
color ink, black = #000000, white = #FFFFFF;
color backgroundColour, salmon, darkBlue, blue;
PFont buttonFont;
float canvasX, canvasY, canvasWidth, canvasHeight, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float topRowY, topRowWidth, topRowHeight, restartX, lineArtX, lineArt2X, eraserX, drawingToolsX, backgroundColourX;
float leftRowX, leftRowWidth, leftRowHeight, lineChoicesY, shapesY, brushSizesY, inkColoursY;
Boolean draw=false, drawOn=false, eraser=false, eraserOn=false, dropDown2=false;

void setup() {
  fullScreen(); //landscape
  variablePopulation();
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
}

void draw() {
  if (draw == true) {
    strokeWeight(2);
    line(mouseX, mouseY, pmouseX, pmouseY);
    reset();
  }
  //&& mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight //code doesn't work that well if the mouse is moving quickly(it draws outside of the canvas)

  if (eraser == true) {
    strokeWeight(4);
    stroke(white);
    line(mouseX, mouseY, pmouseX, pmouseY);
    reset();
  }

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
    if (drawOn == true) {
      if (draw == false) {
        draw = true;
        println("canvas");
      } else {
        draw = false;
      }
    }
    if (eraserOn == true) {
      if (eraser == false) {
        eraser = true;
        println("canvas");
      } else {
        eraser = false;
      }
    }
  }

  //Top Row
  if (mouseX>eraserX && mouseX<eraserX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    eraserOn = true;
    drawOn = false;
  }
  if (mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    dropDown2 = true;
  } else {
    dropDown2 = false;
  }
  if (mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth  && mouseY>topRowY+topRowHeight && mouseY<topRowY+topRowHeight+topRowHeight) {
    drawOn = true;
  }

  //Main Controls
  if (mouseX>quitButtonX  && mouseX<quitButtonX+quitButtonWidth  && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    exit();
  }
  if (mouseX>restartX && mouseX<restartX+topRowWidth  && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    drawOn = false;
  }
}
