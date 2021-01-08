//Global Variables
String penText= "Pen";

void toolsDropdown() {
  if (dropdown2 == true && mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY+topRowHeight && mouseY<(topRowY+topRowHeight)+topRowHeight) { //normal pen option
    fill(lightGrey);
    border();
    rect(drawingToolsX, topRowY+topRowHeight, topRowWidth, topRowHeight); 
    reset();
    fill(darkBlue);
    dropdown2Text();
    reset();
  } else if (dropdown2 == true) {
    border();
    rect(drawingToolsX, topRowY+topRowHeight, topRowWidth, topRowHeight); 
    reset();
    fill(darkBlue);
    dropdown2Text();
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

void canvasColourDropdown() { //will not have hoverover cause it would take too long
  if (dropdown1 == true) {
    border();
    rect(canvasColourDropdownX, canvasColourDropdownY, canvasColourDropdownWidth, canvasColourDropdownHeight);
    reset();
    //Colour Palette Row 1
    rect(canvasColourDropdownX, canvasColourDropdownY, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3); //White, so no fill needed
    fill(black);
    rect(canvasColourDropdownX2, canvasColourDropdownY, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    fill(#8fb2d0);
    rect(canvasColourDropdownX3, canvasColourDropdownY, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    fill(#8087d3);
    rect(canvasColourDropdownX4, canvasColourDropdownY, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    fill(#ba8fd0);
    rect(canvasColourDropdownX5, canvasColourDropdownY, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    //Colour Palette Row 2
    fill(#838383);
    rect(canvasColourDropdownX, canvasColourDropdownY2, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    fill(#c6d4a4);
    rect(canvasColourDropdownX2, canvasColourDropdownY2, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    fill(#8bd4c0);
    rect(canvasColourDropdownX3, canvasColourDropdownY2, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    fill(#d9abb0);
    rect(canvasColourDropdownX4, canvasColourDropdownY2, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    fill(#db6089);
    rect(canvasColourDropdownX5, canvasColourDropdownY2, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    //Colour Palette Row 3
    fill(#81b884);
    rect(canvasColourDropdownX, canvasColourDropdownY3, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    fill(#b4f5a1);
    rect(canvasColourDropdownX2, canvasColourDropdownY3, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    fill(#fff99f);
    rect(canvasColourDropdownX3, canvasColourDropdownY3, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    fill(#e79775);
    rect(canvasColourDropdownX4, canvasColourDropdownY3, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
    fill(#c44645);
    rect(canvasColourDropdownX5, canvasColourDropdownY3, canvasColourDropdownWidth/5, canvasColourDropdownHeight/3);
    reset();
  }
}
void canvasColour() {
}
