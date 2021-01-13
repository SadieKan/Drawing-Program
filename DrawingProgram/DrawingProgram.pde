//Reminder: work on the enlarged hoverover effect for some of the left side options (mainly ink colour since the options may be hard to press)

// Global Variables
color ink, black = #000000, white = #FFFFFF;
color backgroundColour, canvasColour, salmon, darkBlue, blue, lightGray;
color gray, red, blue2, purple, pink, orange, green, teal, lime, yellow;
PFont buttonFont;
float canvasX, canvasY, canvasWidth, canvasHeight, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, canvasColourDropdownX, canvasColourDropdownY, canvasColourDropdownWidth, canvasColourDropdownHeight;
float topRowY, topRowWidth, topRowHeight, restartX, lineArtX, lineArt2X, eraserButtonX, drawingToolsX, backgroundColourX;
float canvasColourDropdownX2, canvasColourDropdownX3, canvasColourDropdownX4, canvasColourDropdownX5, canvasColourDropdownY2, canvasColourDropdownY3;
float leftRowX, leftRowWidth, leftRowHeight, leftRowChoicesWidth, leftRowChoicesHeight, eraserSizesY, shapesY, brushSizesY, inkColoursY, colourChoicesWidth, colourChoicesHeight;
float penThickness, eraserThickness;
float imageX, imageY, imageWidth, imageHeight, imageX2, imageY2, imageWidth2, imageHeight2;
PImage pic, pic2;
Boolean draw=false, drawOn=false, lineArt1= false, lineArt2= false, eraser=false, eraserOn=false, dropdown2=false, dropdown1=false, circleOn=false, circle=false, squareOn=false, square=false, triangleOn=false, triangle=false; 
Boolean canvasBlack=false, canvasWhite=false, canvasGray=false, canvasRed=false, canvasBlue=false, canvasPurple=false, canvasPink=false, canvasOrange=false, canvasGreen=false, canvasTeal=false, canvasLime=false, canvasYellow=false; //Canvas Background Colour 

void setup() {
  fullScreen(); //landscape
  variablePopulation();
  textSetup();
  canvas();
}

void draw() {
  pen();
  eraser();
  circles();
  squares();
  triangles();
  canvasColour(); //if the ink is the same as the canvas colour you are changing it to, the ink will change to black (unless the background colour is being changed to black, then the ink will change to be white)
  boxes(); //prevents the drawing from getting out of the canvas, even when the mouse is moving quickly //canvas tab

  //Top Row Buttons
  quitButton();
  restartCanvas();
  lineArt();
  eraserButton();
  drawingTools();
  backgroundColour();

  //Left Row Buttons
  eraserSizes();
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
  canvasColourPressed();
  mainControlsPressed(); //Quit and restart button
  //Left Row
  eraserSizesPressed();
  circlePressed();
  squarePressed();
  trianglePressed();
  brushSizesPressed();
  inkColourPressed();
}
