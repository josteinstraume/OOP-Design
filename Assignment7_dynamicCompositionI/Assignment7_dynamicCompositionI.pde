/* MSDS 6390 Assignment 7: Refactored version of Assignment 3 - Dynamic Composition 1
 Re-creation of Anthony Howe's Di-Octo kinetic sculpture */

octopus drawOctopus;
bkground getBackground;
PImage oceanFloor;

void setup() {
  size(1000, 1000, P3D);
  noStroke();

  // Instantiate new background
  // and set background image.
  // Note this is probably a bad form of
  // Object Oriented Programming but simply
  // done to take the concept to the nth degree
  getBackground = new bkground();
  getBackground.setbkground();
  
  // Instantiate the octopus
  drawOctopus = new octopus();
}

void draw() {
  //background(oceanFloor);
  getBackground.setbkground();
  lights();
  
  // call display
  drawOctopus.display();
}
