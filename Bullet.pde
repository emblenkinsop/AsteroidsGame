class Bullet extends Floater {
  double dRadians;
  Bullet(Spaceship ship) {
    myCenterX = (ship.getX());
    myCenterY = (ship.getY());
    myPointDirection = (player.getPointDirection());
    dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + player.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + player.getDirectionY();
  }
  public void show() {
    fill(255);
    ellipse((int)myCenterX, (int)myCenterY, 5, 5);
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  }   
  //accessors and mutators
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