// Global Variables
color ink, backgroundColour, black = #000000, white = #FFFFFF, darkPewter;
float canvasX, canvasY, canvasWidth, canvasHeight, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
Boolean draw=false;

void setup() {
  fullScreen(); //landscape
  variablePopulation();
  background(backgroundColour);
  stroke(darkPewter);
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
  stroke(black);
}

void draw() {
  quitButton();
  if (draw == true && mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight) {
    fill(black);
    line(mouseX, mouseY, pmouseX, pmouseY);
    fill(white);
  }
}

void mousePressed() {
  if ( mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight ) {
    println("canvas");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
}
