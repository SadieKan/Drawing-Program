//Global Variables

void canvas() {
  //strokeWeight(5);
  //stroke(darkBlue);
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
  //stroke(black);
  //strokeWeight(1);
}

void boxes() {
  fill(backgroundColour);
  stroke(backgroundColour);
  rect(0, 0, width, canvasY);
  rect(0, height-canvasY, width, canvasY);
  rect(0, canvasY, canvasX, canvasHeight);
  rect(width*29/30, canvasY, width*1/30, canvasHeight);
  stroke(black);
  fill(white);
  //Canvas Outline
  strokeWeight(3);
  stroke(darkBlue);
  line(canvasX, canvasY, canvasX+canvasWidth, canvasY);
  line(canvasX, canvasY+canvasHeight, canvasX+canvasWidth, canvasY+canvasHeight);
  line(canvasX, canvasY, canvasX, canvasY+canvasHeight);
  line(canvasX+canvasWidth, canvasY, canvasX+canvasWidth, canvasY+canvasHeight);
  stroke(black);
  strokeWeight(1);
}
