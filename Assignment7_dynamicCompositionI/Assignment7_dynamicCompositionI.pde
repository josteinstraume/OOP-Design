/* MSDS 6390 Assignment 7: Refactored version of Assignment 3 - Dynamic Composition 1
 Re-creation of Anthony Howe's Di-Octo kinetic sculpture */

octopus drawOctopus;
PImage oceanFloor;

void setup() {
  size(1000, 1000, P3D);
  noStroke();

  // Source: http://il3.picdn.net/shutterstock/videos/3460097/thumb/1.jpg
  oceanFloor = loadImage("ocean_floor.jpg");
  oceanFloor.resize(width, height);
  background(oceanFloor);

  // Instantiate the octopus
  drawOctopus = new octopus();
}

void draw() {
  background(oceanFloor);
  lights();
  
  // call display
  drawOctopus.display();
}
