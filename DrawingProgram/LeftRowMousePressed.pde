void eraserSizesPressed() {
  if (mouseX>leftRowX && mouseX<leftRowX+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    eraserThickness = 10;
  }
  if (mouseX>leftRowX+leftRowWidth*1/5 && mouseX<leftRowX+leftRowWidth*1/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    eraserThickness = 25;
  }
  if (mouseX>leftRowX+leftRowWidth*2/5 && mouseX<leftRowX+leftRowWidth*2/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    eraserThickness = 40;
  }
  if (mouseX>leftRowX+leftRowWidth*3/5 && mouseX<leftRowX+leftRowWidth*3/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    eraserThickness = 50;
  }
  if (mouseX>leftRowX+leftRowWidth*4/5 && mouseX<leftRowX+leftRowWidth*4/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    eraserThickness = 65;
  }
}

void brushSizesPressed() {
  if (mouseX>leftRowX && mouseX<leftRowX+leftRowChoicesWidth && mouseY>brushSizesY+leftRowHeight*2/5 && mouseY<brushSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    penThickness = 2;
  }
  if (mouseX>leftRowX+leftRowWidth*1/5 && mouseX<leftRowX+leftRowWidth*1/5+leftRowChoicesWidth && mouseY>brushSizesY+leftRowHeight*2/5 && mouseY<brushSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    penThickness = 15;
  }
  if (mouseX>leftRowX+leftRowWidth*2/5 && mouseX<leftRowX+leftRowWidth*2/5+leftRowChoicesWidth && mouseY>brushSizesY+leftRowHeight*2/5 && mouseY<brushSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    penThickness = 30;
  }
  if (mouseX>leftRowX+leftRowWidth*3/5 && mouseX<leftRowX+leftRowWidth*3/5+leftRowChoicesWidth && mouseY>brushSizesY+leftRowHeight*2/5 && mouseY<brushSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    penThickness = 45;
  }
  if (mouseX>leftRowX+leftRowWidth*4/5 && mouseX<leftRowX+leftRowWidth*4/5+leftRowChoicesWidth && mouseY>brushSizesY+leftRowHeight*2/5 && mouseY<brushSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    penThickness = 60;
  }
}

void circlePressed() {
  if (mouseX>leftRowX && mouseX<leftRowX+leftRowWidth/3 && mouseY>shapesY+leftRowHeight*2/5 && mouseY<shapesY+leftRowHeight*2/5+leftRowHeight*3/5) {
    drawOn = false;
    draw = false;
    eraserOn = false;
    eraser = false;
    circleOn = true;
    squareOn = false;
    square = false;
    triangleOn = false;
    triangle = false;
  }
}

void squarePressed() {
  if (mouseX>(leftRowX+leftRowWidth*1/3) && mouseX<(leftRowX+leftRowWidth*1/3)+leftRowWidth/3 && mouseY>shapesY+leftRowHeight*2/5 && mouseY<shapesY+leftRowHeight*2/5+leftRowHeight*3/5) {
    drawOn = false;
    draw = false;
    eraserOn = false;
    eraser = false;
    circleOn = false;
    circle = false;
    squareOn = true;
    triangleOn = false;
    triangle = false;
  }
}

void trianglePressed() {
  if (mouseX>(leftRowX+leftRowWidth*2/3) && mouseX<(leftRowX+leftRowWidth*2/3)+leftRowWidth/3 && mouseY>shapesY+leftRowHeight*2/5 && mouseY<shapesY+leftRowHeight*2/5+leftRowHeight*3/5) {
    drawOn = false;
    draw = false;
    eraserOn = false;
    eraser = false;
    circleOn = false;
    circle = false;
    squareOn = false;
    square = false;
    triangleOn = true;
  }
}

void inkColourPressed() { 
  //white 
  if (mouseX>leftRowX && mouseX<leftRowX+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5 && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight) {
    ink = white;
  }
  //black
  if (mouseX>leftRowX+colourChoicesWidth && mouseX<leftRowX+colourChoicesWidth+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5 && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight) {
    ink = black;
  }
  //gray 
  if (mouseX>leftRowX+colourChoicesWidth*2 && mouseX<leftRowX+colourChoicesWidth*2+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5 && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight) {
    ink = gray;
  }
  //red 
  if (mouseX>leftRowX+colourChoicesWidth*3 && mouseX<leftRowX+colourChoicesWidth*3+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5 && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight) {
    ink = red;
  }
  //orange 
  if (mouseX>leftRowX+colourChoicesWidth*4 && mouseX<leftRowX+colourChoicesWidth*4+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5 && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight) {
    ink = orange;
  }
  //yellow 
  if (mouseX>leftRowX+colourChoicesWidth*5 && mouseX<leftRowX+colourChoicesWidth*5+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5 && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight) {
    ink = yellow;
  }
  //
  //lime
  if (mouseX>leftRowX && mouseX<leftRowX+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5+colourChoicesHeight && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight+colourChoicesHeight) {
    ink = lime;
  }
  //green
  if (mouseX>leftRowX+colourChoicesWidth && mouseX<leftRowX+colourChoicesWidth+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5+colourChoicesHeight && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight+colourChoicesHeight) {
    ink = green;
  }
  //teal
  if (mouseX>leftRowX+colourChoicesWidth*2 && mouseX<leftRowX+colourChoicesWidth*2+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5+colourChoicesHeight && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight+colourChoicesHeight) {
    ink = teal;
  }
  //blue2
  if (mouseX>leftRowX+colourChoicesWidth*3 && mouseX<leftRowX+colourChoicesWidth*3+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5+colourChoicesHeight && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight+colourChoicesHeight) {
    ink = blue2;
  }
  //purple
  if (mouseX>leftRowX+colourChoicesWidth*4 && mouseX<leftRowX+colourChoicesWidth*4+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5+colourChoicesHeight && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight+colourChoicesHeight) {
    ink = purple;
  }
  //pink
  if (mouseX>leftRowX+colourChoicesWidth*5 && mouseX<leftRowX+colourChoicesWidth*5+colourChoicesWidth && mouseY>inkColoursY+leftRowHeight*2/5+colourChoicesHeight && mouseY<inkColoursY+leftRowHeight*2/5+colourChoicesHeight+colourChoicesHeight) {
    ink = pink;
  }
}
