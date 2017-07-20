import controlP5.*;

// The Nature of Code
// <http://www.shiffman.net/teaching/nature>
// Spring 2011
// Box2DProcessing example

// Showing how to use applyForce() with box2d

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

// A reference to our box2d world
Box2DProcessing box2d;

// Movers, jsut like before!
Mover[] movers = new Mover[25];

// Attractor, just like before!
Attractor a;

// ControlP5
ControlP5 cp5;

boolean attract = false;

void setup() {
  size(640,360);
  smooth();

  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  // No global gravity force
  box2d.setGravity(0,0);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(8,16),random(width),random(height));
  }
  a = new Attractor(32,width/2,height/2);
  
  cp5 = new ControlP5(this);
  cp5.addBang("setAttraction")
     .setPosition(40, 30)
     .setSize(40, 40)
     .setTriggerEvent(Bang.RELEASE)
     .setLabel("ATTRACTION")
     .setColorLabel(0)
     ;
}

void draw() {
  background(255);

  // We must always step through time!
  box2d.step();

  a.display();

  for (int i = 0; i < movers.length; i++) {
    // Look, this is just like what we had before!
    if (attract) {
      Vec2 force = a.attract(movers[i]);
      movers[i].applyForce(force);
    }
    movers[i].display();
  }
}

public void setAttraction() {
  attract = !attract;
}