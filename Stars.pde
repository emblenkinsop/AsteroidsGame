class Stars
{
  protected int myX, myY;
  
  public Stars(int x, int y) {
    myX = x;
    myY = y;
  }
  public void show() {
    stroke(0,0,150);
    ellipse(myX,myY,3,3);
  }
  
}