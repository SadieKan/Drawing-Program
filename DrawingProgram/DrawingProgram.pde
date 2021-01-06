// Global Variables
color ink, black = #000000, white = #FFFFFF;
color backgroundColour, salmon, darkBlue;
float canvasX, canvasY, canvasWidth, canvasHeight, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
Boolean draw=false;

void setup() {
  fullScreen(); //landscape
  variablePopulation();
  canvas();
}

void draw() {
  if (draw == true) {
    fill(black);
    strokeWeight(2);
    line(mouseX, mouseY, pmouseX, pmouseY);
    strokeWeight(1);
    fill(white);
  }
  //&& mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight //code doesn't work that well if the mouse is moving quickly(it draws outside of the canvas)

  boxes(); //found in canvas tab //prevents the drawing from getting out of the canvas, even when the mouse is moving quickly
  quitButton();
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
