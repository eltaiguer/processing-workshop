// The Nature of Code
// <http://www.shiffman.net/teaching/nature>
// Spring 2011
// Box2DProcessing example

// Basic example of falling rectangles

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import controlP5.*;

// A reference to our box2d world
Box2DProcessing box2d;

// ControlP5 stuff
ControlP5 cp5;

Slider2D s;

// A list we'll use to track fixed objects
ArrayList<Boundary> boundaries;
// A list for all of our rectangles
ArrayList<Box> boxes;

float x,y;

void setup() {
  size(640,360);
  cp5 = new ControlP5(this);
  s = cp5.addSlider2D("gravity")
         .setPosition(30,40)
         .setSize(100,100)
         .setArrayValue(new float[] {50, 50})
         .setColorCaptionLabel(0)
         .setColorValue(0)
         //.disableCrosshair()
         ;
         
  smooth();

  // Initialize box2d physics and create the world
  box2d = new Box2DProcessing(this);
  box2d.createWorld();

  // Create ArrayLists	
  boxes = new ArrayList<Box>();
  boundaries = new ArrayList<Boundary>();

  // Add a bunch of fixed boundaries
  boundaries.add(new Boundary(width/4,height-5,width/2-50,10));
  boundaries.add(new Boundary(3*width/4,height-50,width/2-50,10));
}

void draw() {

  box2d.setGravity(round(s.getArrayValue(0)-50), round(-s.getArrayValue(1)+50));
  s.setValueLabel(round(s.getArrayValue(0)-50) + "," + round(-s.getArrayValue(1)+50));
  background(255);

  // We must always step through time!
  box2d.step();

  // Boxes fall from the top every so often
  if (random(1) < 0.2) {
    Box p = new Box(width/2,30);
    boxes.add(p);
  }

  // Display all the boundaries
  for (Boundary wall: boundaries) {
    wall.display();
  }

  // Display all the boxes
  for (Box b: boxes) {
    b.display();
  }

  // Boxes that leave the screen, we delete them
  // (note they have to be deleted from both the box2d world and our list
  for (int i = boxes.size()-1; i >= 0; i--) {
    Box b = boxes.get(i);
    if (b.done()) {
      boxes.remove(i);
    }
  }
}