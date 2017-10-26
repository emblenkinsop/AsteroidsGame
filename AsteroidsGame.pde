Spaceship player = new Spaceship();
Stars[] backStars = new Stars[100];

public void setup() 
{
  size(900, 600);
  background(0);
  for (int i = 0; i<backStars.length; i++) {
    backStars[i] = new Stars((int)(Math.random()*900), (int)(Math.random()*600));
  }
}
public void draw() 
{
  background(0);
  player.move();
  player.show();
  for (int i = 0; i<backStars.length; i++) {backStars[i].show();}
}

public void keyPressed() {
  if (key == 'a')
    player.turn(-3);
  if (key == 'd')
    player.turn(3);
  if (key == 'w')
    player.accelerate(.1);
  if (key == ' ') {
    player.hyperspace();
  }
    
}