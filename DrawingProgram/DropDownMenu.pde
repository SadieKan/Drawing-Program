//Global Variables
String penText= "Pen";

void toolsDropdown() {
  if (dropdown2 == true && mouseX>drawingToolsX && mouseX<drawingToolsX+topRowWidth && mouseY>topRowY+topRowHeight && mouseY<(topRowY+topRowHeight)+topRowHeight) { //normal pen option
    fill(lightGray);
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
    stroke(ink);
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
    rect(canvasColourDropdownX, canvasColourDropdownY, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3); //White, so no fill needed
    fill(black);
    rect(canvasColourDropdownX2, canvasColourDropdownY, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(#838383);
    rect(canvasColourDropdownX3, canvasColourDropdownY, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(#c44645);
    rect(canvasColourDropdownX4, canvasColourDropdownY, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    //Colour Palette Row 2
    fill(#6986d5);
    rect(canvasColourDropdownX, canvasColourDropdownY2, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(#ba8fd0);
    rect(canvasColourDropdownX2, canvasColourDropdownY2, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(#dc99ad);
    rect(canvasColourDropdownX3, canvasColourDropdownY2, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(#e79775);
    rect(canvasColourDropdownX4, canvasColourDropdownY2, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    //Colour Palette Row 3
    fill(#418b52);
    rect(canvasColourDropdownX, canvasColourDropdownY3, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(#8bd4c0);
    rect(canvasColourDropdownX2, canvasColourDropdownY3, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    fill(#b4f5a1);
    rect(canvasColourDropdownX3, canvasColourDropdownY3, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
    //Yellow
    fill(#fff99f);
    rect(canvasColourDropdownX4, canvasColourDropdownY3, canvasColourDropdownWidth/4, canvasColourDropdownHeight/3);
    reset();
  }
}

void canvasColour() {
  if (canvasWhite == true) {
    canvasColour = white;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasWhite = false;
    dropdown1 = false;
  }
  if (canvasBlack == true) {
    canvasColour = black;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasBlack = false;
    dropdown1 = false;
  }
  if (canvasGray == true) {
    canvasColour = #838383;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasGray = false;
    dropdown1 = false;
  }
  if (canvasRed == true) {
    canvasColour = #c44645;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasRed = false;
    dropdown1 = false;
  }
  if (canvasBlue == true) {
    canvasColour = #6986d5;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasBlue = false;
    dropdown1 = false;
  }
  if (canvasPurple == true) {
    canvasColour = #ba8fd0;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasPurple = false;
    dropdown1 = false;
  }
  if (canvasPink == true) {
    canvasColour = #dc99ad;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasPink = false;
    dropdown1 = false;
  }
  if (canvasOrange == true) {
    canvasColour = #e79775;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasOrange = false;
    dropdown1 = false;
  }
  if (canvasGreen == true) {
    canvasColour = #418b52;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasGreen = false;
    dropdown1 = false;
  }
  if (canvasTeal == true) {
    canvasColour = #8bd4c0;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasTeal = false;
    dropdown1 = false;
  }
  if (canvasLime == true) {
    canvasColour = #b4f5a1;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasLime = false;
    dropdown1 = false;
  }
  if (canvasYellow == true) {
    canvasColour = #fff99f;
    fill(canvasColour);
    rect(canvasX, canvasY, canvasWidth, canvasHeight);
    reset();
    canvasYellow = false;
    dropdown1 = false;
  }
}
