PImage img;

void setup() {
  size(200, 200);
  img = loadImage("koala.jpg");
  set(0, 0, img);
}

void draw() {
  // We must also call loadPixels() on the PImage since we are going to read its pixels.
  img.loadPixels();
  for (int y = 0; y < height; y++ ) {
    for (int x = 0; x < width; x++ ) {
      
      if (x==y) {
        set(x, y, color(0,0,0));
      }
    }
  }
}