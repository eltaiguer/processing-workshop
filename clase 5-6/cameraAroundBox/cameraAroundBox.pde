float rotation=0;

void setup() {
  size(500, 500, P3D);
  background(0);
}


void draw() {
  background(0);
  lights();
  
  float orbitRadius= 200;
  float ypos= 0;
  float xpos= cos(radians(rotation))*orbitRadius;
  float zpos= sin(radians(rotation))*orbitRadius;
  
  camera(xpos, ypos, zpos, 0, 0, 0, 0, 1, 0);
  box(70);

  rotation++;
}