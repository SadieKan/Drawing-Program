void variablePopulation() {
  ink = black;
  backgroundColour = #A8D0E6;
  canvasColour = white;
  salmon = #F76C6C;
  darkBlue = #24305E;
  blue = #6392bf;

  //Canvas
  canvasX = width*9/30;
  canvasY = height*2/15;
  canvasWidth = width*20/30;
  canvasHeight = height*11/15;

  //Quit Button
  quitButtonX = width*57/60;
  quitButtonY = height*1/45;
  quitButtonWidth = width*1/30;
  quitButtonHeight = height*1/20;

  //Line Art
  pic = loadImage ("../Images/totoro.PNG"); //Dimensions: 660 Width, 962 Height
  float imageWidthRatio = 660.0/660.0; 
  float imageHeightRatio = 962.0/660.0;
  imageX = canvasX+ width*1/5;
  imageY = canvasY;
  imageWidth = (canvasHeight*imageWidthRatio)*14/20;
  imageHeight = (canvasHeight*imageHeightRatio)*14/20;
  pic2 = loadImage ("../Images/pooh.png"); //Dimensions: 801 Width, 1024 Height
  float imageWidthRatio2 = 801.0/801.0; 
  float imageHeightRatio2 = 1024.0/801.0;
  imageX2 = canvasX+ width*1/5;
  imageY2 = canvasY+ height*1/50;
  imageWidth2 = (canvasHeight*imageWidthRatio2)*15/20;
  imageHeight2 = (canvasHeight*imageHeightRatio2)*15/20; 

  //Top Row Buttons
  topRowY = height*1/30;
  topRowWidth = width*7/60;
  topRowHeight = height*2/30;
  restartX = width*47/60;
  lineArtX = width*38/60;
  lineArt2X = width*29/60;
  eraserX = width*20/60;
  drawingToolsX = width*11/60;
  backgroundColourX = width*2/60;
  //Drop Down Menus
  //Icons/Display Choices

  //Left Side Buttons
  leftRowX = width*1/30;
  leftRowWidth = width*6/30;
  leftRowHeight = height*4/30;
  lineChoicesY = height*5/30;
  shapesY = height*11/30;
  brushSizesY = height*17/30;
  inkColoursY = height*23/30;
  //Enlarged Hover Over
  //Icons/Display Choices

  //Volume Controls

  //Play and Pause Buttons

  //Song 1-3 Buttons

  //Music Restart Buttons
}
