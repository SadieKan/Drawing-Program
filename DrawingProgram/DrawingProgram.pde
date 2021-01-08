// Global Variables
color ink, black = #000000, white = #FFFFFF;
color backgroundColour, canvasColour, salmon, darkBlue, blue, lightGrey;
PFont buttonFont;
float canvasX, canvasY, canvasWidth, canvasHeight, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, canvasColourDropdownX, canvasColourDropdownY, canvasColourDropdownWidth, canvasColourDropdownHeight;
float topRowY, topRowWidth, topRowHeight, restartX, lineArtX, lineArt2X, eraserButtonX, drawingToolsX, backgroundColourX;
float canvasColourDropdownX2, canvasColourDropdownX3, canvasColourDropdownX4, canvasColourDropdownX5, canvasColourDropdownY2, canvasColourDropdownY3;
float leftRowX, leftRowWidth, leftRowHeight, lineChoicesY, shapesY, brushSizesY, inkColoursY;
float penThickness, eraserThickness;
float imageX, imageY, imageWidth, imageHeight, imageX2, imageY2, imageWidth2, imageHeight2;
PImage pic, pic2;
Boolean draw=false, drawOn=false, lineArt1= false, lineArt2= false, eraser=false, eraserOn=false, dropdown2=false, dropdown1=false;

void setup() {
  fullScreen(); //landscape
  variablePopulation();
  textSetup();
  canvas();
}

void draw() {
  pen();
  eraser();
  canvasColour();
  boxes(); //prevents the drawing from getting out of the canvas, even when the mouse is moving quickly //canvas tab

  //Top Row Buttons
  quitButton();
  restartCanvas();
  lineArt();
  eraserButton();
  drawingTools();
  backgroundColour();

  //Left Row Buttons
  lineChoices();
  shapes();
  brushSizes();
  inkColours();

  //Drop Down Menus and Enlarged Options //Placed at the end so that when open, the covers the other buttons/background
  toolsDropdown();
  canvasColourDropdown();

  //Sound Control Buttons
}

void mousePressed() {
  //Drawing On the Canvas
  canvasPressed();
  //Top Row
  topRowMousePressed();
  mainControlsPressed();
}
