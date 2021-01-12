void lineChoices() {
  border();
  rect(leftRowX, lineChoicesY, leftRowWidth, leftRowHeight);
  reset();
  rect(leftRowX, lineChoicesY, leftRowWidth, leftRowHeight/4);
  rect(leftRowX, lineChoicesY+leftRowHeight*1/4, leftRowWidth, leftRowHeight/4);
  rect(leftRowX, lineChoicesY+leftRowHeight*2/4, leftRowWidth, leftRowHeight/4);
  rect(leftRowX, lineChoicesY+leftRowHeight*3/4, leftRowWidth, leftRowHeight/4);
}

void shapes() {
  border();
  rect(leftRowX, shapesY, leftRowWidth, leftRowHeight);
  reset();
}

void brushSizes() {
  border();
  rect(leftRowX, brushSizesY, leftRowWidth, leftRowHeight);
  reset();
}

void inkColours() {
  border();
  rect(leftRowX, inkColoursY, leftRowWidth, leftRowHeight);
  reset();
}
