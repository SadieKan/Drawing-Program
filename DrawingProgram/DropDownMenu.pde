//Global Variables
String penText= "Pen";

void toolsDropDown() {
  if (dropDown2 == true) {
    rect(drawingToolsX, topRowY+topRowHeight, topRowWidth, topRowHeight); //normal pen option
    fill(darkBlue);
    dropDown2Text();
    reset();
  }
}
