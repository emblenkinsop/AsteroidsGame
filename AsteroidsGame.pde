Spaceship player = new Spaceship();

public void setup() 
{
  size(900, 600);
  background(0);
}
public void draw() 
{
  background(0);
  player.move();
  player.show();
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