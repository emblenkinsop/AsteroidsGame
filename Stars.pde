class Stars
{
  protected int myX, myY;
  
  public Stars() {
    myX = (int)(Math.random()*900);
    myY = (int)(Math.random()*600);
  }
  public void show() {
    stroke(100,100,250);
    fill(0,0,150);
    ellipse(myX,myY,3,3);
  }
  
}