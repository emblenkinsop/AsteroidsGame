class Asteroid extends Floater {
  Asteroid() {
    corners = 14;
    int[] xS = {-19,-14,-6,1,8,13,18,18,13,8,1,-6,-14,-19};
    int[] yS = {0,7,5,11,16,12,6,3,-3,-6,-12,-16,-11,-5,-7,-0};
    xCorners = xS;
    yCorners = yS;
    
    myColor = 255;
    myCenterX = 450;
    myCenterY = 300;
    myDirectionX = myDirectionY = myPointDirection = 0;
  }
  
  //accesors and mutators  
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;} 
  public void setY(int y) {myCenterY = y;}   
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}   
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}
}