PImage img;

void setup() {
  size(200,200);
  img = loadImage("pattern.jpg");
  background(loadImage("koala.jpg")); 
}

void draw() {
}

void keyPressed() {
  background(loadImage("koala.jpg")); 
  switch(key){
    case 'q':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, ADD);
      break;
    case 'w':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, SUBTRACT);
      break;
    case 'e':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, DARKEST);
      break;
    case 'r':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, LIGHTEST);
      break;
    case 't':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, BURN);
      break;
    case 'y':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, BLEND);
      break;
    case 'u':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, DIFFERENCE);
      break;
    case 'i':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, EXCLUSION);
      break;
    case 'o':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, MULTIPLY);
      break;
    case 'p':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, SCREEN);
      break;
    case 'a':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, OVERLAY);
      break;
    case 's':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, HARD_LIGHT);
      break;
    case 'd':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, SOFT_LIGHT);
      break;
    case 'f':
      blend(img, 0, 0, 200, 200, 0, 0, 200, 200, DODGE);
      break;
    default:
      background(loadImage("koala.jpg"));
      break;
  }
}