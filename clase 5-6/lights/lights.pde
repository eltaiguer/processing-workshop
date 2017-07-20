char value;
void setup() {
  size(200, 200, P3D);
  value = 0;
}

void draw() {
  background(0);
  translate(100, 100, 0);
  light();
  noStroke();
  fill(255);
  sphere(50);
}

void light() {
  switch(value) {
    case '1':
      lights();
      break;
    case '2':
      ambientLight(0, 0, 255);
      break;
    case '3':
      directionalLight(0, 255, 0, 0, -1, 0);
      break;
    case '4':
      spotLight(255, 0, 0, width/2, height/2, 400, 0, 0, -1, PI/4, 2);
      break;
    case '5':
      pointLight(255, 0, 0, width/2, height/2, 400);
      break;
    default:
      break;
  }
}

void keyPressed() {
  value = key;
}