class bkground {
  PImage oceanFloor;
  
  bkground() {
    oceanFloor = loadImage("ocean_floor.jpg");
    oceanFloor.resize(width, height);
  }
  
  void setbkground() {
    background(oceanFloor);
  }
}
