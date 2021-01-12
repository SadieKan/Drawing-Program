//Global Variables
String shapes = "Shapes:";

//Line Choices
void lineChoices() {
  border();
  rect(leftRowX, lineChoicesY, leftRowWidth, leftRowHeight);
  rect(leftRowX, lineChoicesY, leftRowWidth, leftRowHeight/4);
  rect(leftRowX, lineChoicesY+leftRowHeight*1/4, leftRowWidth, leftRowHeight/4);
  rect(leftRowX, lineChoicesY+leftRowHeight*2/4, leftRowWidth, leftRowHeight/4);
  rect(leftRowX, lineChoicesY+leftRowHeight*3/4, leftRowWidth, leftRowHeight/4);
  reset();
}

//Shape Choices
void shapes() {
  border();
  rect(leftRowX, shapesY, leftRowWidth, leftRowHeight);
  rect(leftRowX, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
  rect(leftRowX+leftRowWidth*1/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
  rect(leftRowX+leftRowWidth*2/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
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
    ellipse(leftRowX+leftRowWidth/6, shapesY+leftRowHeight*7/10, leftRowHeight*4/10, leftRowHeight*4/10);
  }
  if (mouseX>(leftRowX+leftRowWidth*1/3) && mouseX<(leftRowX+leftRowWidth*1/3)+leftRowWidth/3 && mouseY>shapesY+leftRowHeight*2/5 && mouseY<shapesY+leftRowHeight*2/5+leftRowHeight*3/5) {
    fill(lightGray);
    rect(leftRowX+leftRowWidth*1/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    rect(leftRowX+leftRowWidth*5/12, shapesY+leftRowHeight*19/40, leftRowWidth*1/6, leftRowWidth*1/6);
  } else {
    rect(leftRowX+leftRowWidth*5/12, shapesY+leftRowHeight*19/40, leftRowWidth*1/6, leftRowWidth*1/6);
  }
  if (mouseX>(leftRowX+leftRowWidth*2/3) && mouseX<(leftRowX+leftRowWidth*2/3)+leftRowWidth/3 && mouseY>shapesY+leftRowHeight*2/5 && mouseY<shapesY+leftRowHeight*2/5+leftRowHeight*3/5) {
    fill(lightGray);
    rect(leftRowX+leftRowWidth*2/3, shapesY+leftRowHeight*2/5, leftRowWidth/3, leftRowHeight*3/5);
    reset();
    triangle(leftRowX+leftRowWidth*9/12, shapesY+leftRowHeight*13/15, leftRowX+leftRowWidth*5/6, shapesY+leftRowHeight*7/15, leftRowX+leftRowWidth*11/12, shapesY+leftRowHeight*13/15);
  } else {
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
}

//Brush Sizes
void brushSizes() {
  border();
  rect(leftRowX, brushSizesY, leftRowWidth, leftRowHeight);
  reset();
}

//Ink Colours
void inkColours() {
  border();
  rect(leftRowX, inkColoursY, leftRowWidth, leftRowHeight);
  reset();
}
