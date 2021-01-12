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
