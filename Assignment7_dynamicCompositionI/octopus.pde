/*
Octopus class - 3d rendering of rendering Anthony Howe's Di-Octo kinetic sculpture.
 */

class octopus {
  // attributes
  PImage octoTexture;
  PShape octoBody;
  PShape octoArm;
  PShape octoHead;
  int numLimbs = 8;
  int numLimbSections = 16;
  float theta = 0;
  float r = 0;

  // default constructor: special methods in the class, used to initialize the class
  // just like methods but don't use a return type
  octopus() {
    octoTexture = loadImage("octo.jpg");
    sphereDetail(15);
    octoBody = createShape(SPHERE, 180);
    octoHead = createShape(SPHERE, 90);
    octoBody.setTexture(octoTexture);
    octoHead.setTexture(octoTexture);
  }

  // method: function inside the class - draw the limbs of the octopus
  void drawLimb(int s) {
    rotateY(.3);
    translate(-3*s, 0);
    sphereDetail(15);
    octoArm = createShape(SPHERE, 4*s);
    octoArm.setTexture(octoTexture);
    shape(octoArm);
    if ( s > 0 ) drawLimb(s-1);
  }
  
  void display() {
    // Move object across the middle of the screen
    translate(r % width, height/2, 0);
    
    // Spin the subsequently drawn spheres
    rotateX(cos(millis()/10000.0));
    rotateY(sin(millis()/10000.0));
    
    // Reduce sphere detail to improve rendering
    // Draw body of the octopus
    sphereDetail(15);
    shape(octoBody);
    
    // For loop iteratively draws limbs equal to the value set by the global
    // variable int numLimbs Default is 8
    for (int t = 0; t < numLimbs; t++) {
      pushMatrix();
      rotate(t * TWO_PI / numLimbs);
      translate(160, 0);
      rotateY(-map(millis()%5000, 0, 5000, 0, TWO_PI));

      // Length of each limb is determined by the value of
      // numLimbSection Default is 16 This means that each limb is drawn
      // using 16 spheres of decreasing size
      pushMatrix();
      drawLimb(numLimbSections);    
      popMatrix();
      popMatrix();
    }
    theta += 0.01;
    r += 1;
  }
}
