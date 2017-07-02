PImage img1;

void setup() {
  size(200,200);
  img1 = loadImage("koala.jpg");
  image(img1, 0, 0);
}

void draw() {
}

void keyPressed() {
  println(key);
  switch(key){
    case '0':
      filter(THRESHOLD);
      break;
    case '1':
      filter(GRAY);
      break;
    case '2':
      filter(INVERT);
      break;
    case '3':
      filter(POSTERIZE, 4);
      break;
    case '4':
      filter(BLUR, 6);
      break;
    case '5':
      filter(ERODE);
      break;
    case '6':
      filter(DILATE);
      break;
    default:
      image(img1, 0, 0);
      break;
  }
}