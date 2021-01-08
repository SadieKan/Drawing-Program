//Global Variables
String penText= "Pen";

void toolsDropDown() {
  if (dropDown2 == true && mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY+topRowHeight && mouseY<(topRowY+topRowHeight)+topRowHeight) { //normal pen option
    fill(lightGrey);
    border();
    rect(drawingToolsX, topRowY+topRowHeight, topRowWidth, topRowHeight); 
    reset();
    fill(darkBlue);
    dropDown2Text();
    reset();
  } else if (dropDown2 == true) {
    border();
    rect(drawingToolsX, topRowY+topRowHeight, topRowWidth, topRowHeight); 
    reset();
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
