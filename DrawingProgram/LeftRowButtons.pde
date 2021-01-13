//Global Variables
String shapes = "Shapes:", eraserSizes = "Eraser Sizes:", brushSizes = "Brush Sizes:";

//Eraser Sizes
void eraserSizes() {
  border();
  rect(leftRowX, eraserSizesY, leftRowWidth, leftRowHeight);
  fill(darkBlue);
  rect(leftRowX, eraserSizesY, leftRowWidth, leftRowHeight*2/5);
  reset();
  eraserSizesText();
  if (mouseX>leftRowX && mouseX<leftRowX+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*1/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*1/5, leftRowChoicesWidth*1/5);
  } else {
    border();
    rect(leftRowX, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*1/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*1/5, leftRowChoicesWidth*1/5);
  }
  if (mouseX>leftRowX+leftRowWidth*1/5 && mouseX<leftRowX+leftRowWidth*1/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*1/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*3/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*2/5, leftRowChoicesWidth*2/5);
  } else {
    border();
    rect(leftRowX+leftRowWidth*1/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*3/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*2/5, leftRowChoicesWidth*2/5);
  }
  if (mouseX>leftRowX+leftRowWidth*2/5 && mouseX<leftRowX+leftRowWidth*2/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*2/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*5/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*3/5, leftRowChoicesWidth*3/5);
  } else {
    border();
    rect(leftRowX+leftRowWidth*2/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*5/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*3/5, leftRowChoicesWidth*3/5);
  }
  if (mouseX>leftRowX+leftRowWidth*3/5 && mouseX<leftRowX+leftRowWidth*3/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*3/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*7/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*4/5, leftRowChoicesWidth*4/5);
  } else {
    border();
    rect(leftRowX+leftRowWidth*3/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*7/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth*4/5, leftRowChoicesWidth*4/5);
  }
  if (mouseX>leftRowX+leftRowWidth*4/5 && mouseX<leftRowX+leftRowWidth*4/5+leftRowChoicesWidth && mouseY>eraserSizesY+leftRowHeight*2/5 && mouseY<eraserSizesY+leftRowHeight*2/5+leftRowChoicesHeight) {
    border();
    fill(lightGray);
    rect(leftRowX+leftRowWidth*4/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*9/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth, leftRowChoicesWidth);
  } else {
    border();
    rect(leftRowX+leftRowWidth*4/5, eraserSizesY+leftRowHeight*2/5, leftRowChoicesWidth, leftRowChoicesHeight);
    reset();
    ellipse(leftRowX+leftRowWidth*9/10, eraserSizesY+leftRowHeight*7/10, leftRowChoicesWidth, leftRowChoicesWidth);
  }
}//End of Eraser Sizes


//Shape Choices
void shapes() {
  border();
  rect(leftRowX, shapesY, leftRowWidth, leftRowHeight);
  fill(darkBlue);
  rect(leftRowX, shapesY, leftRowWidth, leftRowHeight*2/5);
  reset();
  shapesButtonText();
  if (mouseX>leftRowX && mouseX<leftRowX+leftRowWidth/3 && mouseY>shapesY+leftRowHeight*2/5 && mouseY<shapesY+leftRowHeight*2/5+leftRowHeight*3/5) {
    fill(lightGray);
    rect(leftRowX, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    ellipse(leftRowX+leftRowWidth/6, shapesY+leftRowHeight*7/10, leftRowHeight*4/10, leftRowHeight*4/10);
  } else {
    border();
    rect(leftRowX, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    ellipse(leftRowX+leftRowWidth/6, shapesY+leftRowHeight*7/10, leftRowHeight*4/10, leftRowHeight*4/10);
  }
  if (mouseX>(leftRowX+leftRowWidth*1/3) && mouseX<(leftRowX+leftRowWidth*1/3)+leftRowWidth/3 && mouseY>shapesY+leftRowHeight*2/5 && mouseY<shapesY+leftRowHeight*2/5+leftRowHeight*3/5) {
    fill(lightGray);
    rect(leftRowX+leftRowWidth*1/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    rect(leftRowX+leftRowWidth*5/12, shapesY+leftRowHeight*19/40, leftRowWidth*1/6, leftRowWidth*1/6);
  } else {
    border();
    rect(leftRowX+leftRowWidth*1/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    rect(leftRowX+leftRowWidth*5/12, shapesY+leftRowHeight*19/40, leftRowWidth*1/6, leftRowWidth*1/6);
  }
  if (mouseX>(leftRowX+leftRowWidth*2/3) && mouseX<(leftRowX+leftRowWidth*2/3)+leftRowWidth/3 && mouseY>shapesY+leftRowHeight*2/5 && mouseY<shapesY+leftRowHeight*2/5+leftRowHeight*3/5) {
    fill(lightGray);
    rect(leftRowX+leftRowWidth*2/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    triangle(leftRowX+leftRowWidth*9/12, shapesY+leftRowHeight*13/15, leftRowX+leftRowWidth*5/6, shapesY+leftRowHeight*7/15, leftRowX+leftRowWidth*11/12, shapesY+leftRowHeight*13/15);
  } else {
    border();
    rect(leftRowX+leftRowWidth*2/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    triangle(leftRowX+leftRowWidth*9/12, shapesY+leftRowHeight*13/15, leftRowX+leftRowWidth*5/6, shapesY+leftRowHeight*7/15, leftRowX+leftRowWidth*11/12, shapesY+leftRowHeight*13/15);
  }
}
void circles() {
  if (circle == true) {
    fill(ink);
    stroke(ink);
    ellipse(mouseX, mouseY, leftRowHeight*3/10, leftRowHeight*3/10); //you cannot change circle size
    reset();
  }
}
void squares() {
  if (square == true) {
    fill(ink);
    stroke(ink);
    rect(mouseX, mouseY, leftRowHeight*3/10, leftRowHeight*3/10);
    reset();
  }
}
void triangles() {
  if (triangle == true) {
    fill(ink);
    stroke(ink);
    triangle(mouseX-leftRowWidth*1/8, mouseY, mouseX, mouseY-leftRowHeight*1/2, mouseX+leftRowWidth*1/8, mouseY);
    reset();
  }
}//End of Shape Choices


//Brush Sizes
void brushSizes() {
  border();
  rect(leftRowX, brushSizesY, leftRowWidth, leftRowHeight);
  fill(darkBlue);
  rect(leftRowX, brushSizesY, leftRowWidth, leftRowHeight*2/5);
  reset();
  brushSizesText();
}//End of Brush Sizes


//Ink Colours
void inkColours() {
  border();
  rect(leftRowX, inkColoursY, leftRowWidth, leftRowHeight);
  reset();
}//End of Ink Colours
