class Asteroid extends Floater {
  private double rotationSpeed;
  public Asteroid () {
  corners = 5;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = -11;
  yCorners[0] = -8;
  xCorners[1] = -6;
  yCorners[1] = -2;
  xCorners[2] = -7;
  yCorners[2] = 6;
  xCorners[3] = 4;
  yCorners[3] = 5;
  xCorners[4] = 12;
  yCorners[4] = 0;
  myColor = 150;
  myCenterX = Math.random()*400;
  myCenterY = Math.random()*400;
  myXspeed = Math.random()*4 -2;
  myYspeed = Math.random()*4 -2;
  myPointDirection = Math.random()*360;
  rotationSpeed = Math.random()*4 -2;
  }
  public void move(){
  super.move();
  turn(rotationSpeed);
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
