// Global Variables
color ink, black = #000000, white = #FFFFFF;
color backgroundColour, canvasColour, salmon, darkBlue, blue;
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
  canvas();
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
    stroke(canvasColour);
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
  canvasPressed();
  //Top Row
  topRowMousePressed();
  mainControlsPressed();
}
