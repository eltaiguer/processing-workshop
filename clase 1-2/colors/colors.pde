int mode = 0;
int value;
void setup() {
  size(640, 480);
  rectMode(RADIUS);
  colorMode(HSB, 640, 100, 480);
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