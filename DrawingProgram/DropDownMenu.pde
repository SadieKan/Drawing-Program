//Global Variables
String penText= "Pen";

void toolsDropDown() {
  if (dropDown2 == true) { //normal pen option
    rect(drawingToolsX, topRowY+topRowHeight, topRowWidth, topRowHeight); 
    fill(darkBlue);
    dropDown2Text();
    reset();
  }
}

void pen() {
  if (draw == true) {
    strokeWeight(penThickness);
    line(mouseX, mouseY, pmouseX, pmouseY);
    reset();
  }
  //&& mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight //code doesn't work that well if the mouse is moving quickly(it draws outside of the canvas)
}
