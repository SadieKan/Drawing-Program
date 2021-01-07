// Global Variables
color ink, black = #000000, white = #FFFFFF;
color backgroundColour, salmon, darkBlue, blue;
PFont buttonFont;
float canvasX, canvasY, canvasWidth, canvasHeight, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float topRowY, topRowWidth, topRowHeight, restartX, lineArtX, lineArt2X, eraserX, drawingToolsX, backgroundColourX;
float leftRowX, leftRowWidth, leftRowHeight, lineChoicesY, shapesY, brushSizesY, inkColoursY;
float imageX, imageY, imageWidth, imageHeight, imageX2, imageY2, imageWidth2, imageHeight2;
PImage pic, pic2;
Boolean draw=false, drawOn=false, lineArt1= false, lineArt2= false, eraser=false, eraserOn=false, dropDown2=false;

void setup() {
  fullScreen(); //landscape
  variablePopulation();
  textSetup();
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
    strokeWeight(20);
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
  if (lineArt1 == true && lineArt2 == false) image(pic, imageX, imageY, imageWidth, imageHeight);
  if (lineArt1 == false && lineArt2 == true) image(pic2, imageX2, imageY2, imageWidth2, imageHeight2);
  //soundControlButtons();
}

void mousePressed() {
  //Drawing On the Canvas
  if (mouseX>canvasX  && mouseX<canvasX+canvasWidth && mouseY>canvasY && mouseY<canvasY+canvasHeight) {
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
        println("eraser");
      } else {
        eraser = false;
      }
    }
  }

  //Top Row
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
  if (mouseX>eraserX && mouseX<eraserX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    eraserOn = true;
    drawOn = false;
    draw = false;
  }
  if (mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY && mouseY<topRowY+topRowHeight) {
    dropDown2 = true;
  } else {
    dropDown2 = false;
  }
  if (mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY+topRowHeight && mouseY<topRowY+topRowHeight+topRowHeight) {
    drawOn = true;
    eraserOn = false;
    eraser = false;
  }

  //Main Controls
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
