PImage img1, img2;

void setup() {
  size(200, 200);
  img1 = loadImage("koala.jpg");
  img2 = loadImage("pattern.jpg");
}

void draw() {
  loadPixels();
  img1.loadPixels();
  img2.loadPixels();
  
  for (int y = 0; y < height; y++ ) {
    for (int x = 0; x < width; x++ ) {
     int loc = x + y*width;
     
     if (loc % 2 == 0){
       pixels[loc] = img1.pixels[loc];
     } else {
       pixels[loc] = img2.pixels[loc];
     }
    }
  }
  
  updatePixels();
}