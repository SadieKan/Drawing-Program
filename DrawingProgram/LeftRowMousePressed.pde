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
