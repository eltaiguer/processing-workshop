color pink = color(255, 102, 204);
loadPixels();
for (int i = 0; i < (width*height/2)-width/2; i++) {
  pixels[i] = pink;
}
updatePixels();