class Asteroid extends Floater {
  private double rotation;
  Asteroid() {
    corners = 14;
    int[] xS = {-19,-14,-6,1,8,13,18,18,13,8,1,-6,-14,-19};
    int[] yS = {0,7,5,11,16,12,6,3,-3,-6,-12,-16,-11,-5,-7,-0};
    xCorners = xS;
    yCorners = yS;
    
    rotation = Math.random()*2-1;
    myColor = 255;
    myCenterX = Math.random()*900;
    myCenterY = Math.random()*600;
    myDirectionX = Math.random()-.5;
    myDirectionY = Math.random()-.5;
    myPointDirection = Math.random()*360;
  }
  
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }
    myPointDirection+=rotation;
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