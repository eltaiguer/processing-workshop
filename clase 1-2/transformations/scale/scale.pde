void setup() {
  size(200,200);
  background(255);

  stroke(128);
  rect(20, 20, 40, 40);

  stroke(0);
  // saves the current coordinate system
  pushMatrix();
  // increase the shape size by 200%
  scale(2.0);
  rect(20, 20, 40, 40);
  // loads the saved coordinate system
  popMatrix();
}
