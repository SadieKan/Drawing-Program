// Global Variables
color ink, black = #000000, white = #FFFFFF;
color backgroundColour, midnightBlue, darkBlue;
float canvasX, canvasY, canvasWidth, canvasHeight, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
Boolean draw=false;

void setup() {
  fullScreen(); //landscape
  variablePopulation();
  background(backgroundColour);
  stroke(darkBlue);
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
  //topRowButtons();
  //leftButtons();
  //soundControlButtons();
}

void mousePressed() {
  if (mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight) {
    println("canvas");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
  if (mouseX>quitButtonX  && mouseX<quitButtonX+quitButtonWidth  && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    exit();
  }
}
