int mode = 0;
int value;
void setup() {
  //setting sketch size
  size(640, 480);
  // setting rect drawing mode to radius
  rectMode(RADIUS);
  //setting color mode and ranges
  colorMode(HSB, 640, 100, 480);
  // disabling the shape outline
  noStroke();
}

void draw() {
  //setting background color to erase previous drawings
  background(0, 0, 0);

  if (mode == 0) {
    //setting rect color fill according mouse position
    fill(mouseX, 100, mouseY);
    println(0);
  } else {
    fill(mouseX, 100, mouseY);
    println(1);
  }

  // drawing a rectangle taking the current mouse position as center
  rect(mouseX, mouseY, 30, 30);
}

void keyPressed() {
  // on space key pressed
  if (key == ' ') {
    if (mode == 0){
      mode = 1;
      colorMode(RGB, 640, 100, 480);
    } else {
      mode = 0;
      colorMode(HSB, 640, 100, 480);
    }
  }
}
