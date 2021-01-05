// Global Variables
color ink, black;
float canvasX, canvasY, canvasWidth, canvasHeight;
Boolean draw=false;

void setup() {
  fullScreen(); //landscape
  variablePopulation();
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
}

void draw() {
  if (draw == true) {
    fill(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
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
