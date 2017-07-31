void setup() {
  //setting sketch size
  size(640, 360);
  // setting background color
  background(102);
}

void draw() {
  // setting line color
  stroke(255);
  // we want to draw the line only when mouse is pressed
  if (mousePressed == true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
