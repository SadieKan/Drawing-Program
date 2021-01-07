void boxes() {
  fill(backgroundColour);
  stroke(backgroundColour);
  rect(0, 0, width, canvasY);
  rect(0, height-canvasY, width, canvasY);
  rect(0, canvasY, canvasX, canvasHeight);
  rect(width*29/30, canvasY, width*1/30, canvasHeight);
  reset();
  //Canvas Outline
  border();
  line(canvasX, canvasY, canvasX+canvasWidth, canvasY);
  line(canvasX, canvasY+canvasHeight, canvasX+canvasWidth, canvasY+canvasHeight);
  line(canvasX, canvasY, canvasX, canvasY+canvasHeight);
  line(canvasX+canvasWidth, canvasY, canvasX+canvasWidth, canvasY+canvasHeight);
  reset();
}
