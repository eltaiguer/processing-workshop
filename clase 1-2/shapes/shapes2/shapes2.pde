
  // Drawing vertices in 3D requires P3D
  // as a parameter to size()
  size(100, 100, P3D);
  beginShape(POINTS);
  vertex(30, 20, -50);
  vertex(85, 20, -50);
  vertex(85, 75, -50);
  vertex(30, 75, -50);
  endShape();