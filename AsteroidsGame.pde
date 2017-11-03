Spaceship player = new Spaceship();
Stars[] backStars = new Stars[100];
Asteroid[] asteroids = new Asteroid[20];

public void setup() 
{
  size(900, 600);
  background(0);
  for (int i = 0; i<backStars.length; i++) {
    backStars[i] = new Stars();
  }
  for (int i = 0; i<asteroids.length; i++) {
    asteroids[i] = new Asteroid();
    asteroids[i].accelerate(.01);
  }
}
public void draw() 
{
  background(0);
  player.move();
  player.show();
  for (int i = 0; i<backStars.length; i++) {backStars[i].show();}
  for (int i = 0; i<asteroids.length; i++) {asteroids[i].move(); asteroids[i].show();}
}

public void keyPressed() {
  if (key == 'a')
    player.turn(-3);
  if (key == 'd')
    player.turn(3);
  if (key == 'w')
    player.accelerate(.1);
  if (key == ' ') {
    //player.hyperspace();
    player.setX((int)(Math.random()*900));
    player.setY((int)(Math.random()*600));
    player.setPointDirection((int)(Math.random()*360));
    player.setDirectionX(0);
    player.setDirectionY(0);
  }
    
}