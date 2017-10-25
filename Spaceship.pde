class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    myColor = 255;
    myCenterX = 450;
    myCenterY = 300;
    myDirectionX = myDirectionY = myPointDirection = 0;
    int[] xS = {-2,-8,16,-8};
    int[] yS = {0,8,0,-8};
    xCorners = xS;
    yCorners = yS;
    
  }
  
  public void hyperspace() {
    myCenterX = (int)(Math.random()*900);
    myCenterY = (int)(Math.random()*600);
    myPointDirection = Math.random()*360;
    myDirectionX = myDirectionY = 0;
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