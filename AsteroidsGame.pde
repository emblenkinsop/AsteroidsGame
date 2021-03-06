Spaceship player = new Spaceship();
Stars[] backStars = new Stars[100];
//Bullet testBullet = new Bullet(player);
ArrayList <Asteroid> backAsteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> playerBullets = new ArrayList <Bullet>();
int tick;
int gameOverTick;
int healthBar;

public void setup() 
{
  size(900, 600);
  background(0);
  for (int i = 0; i<backStars.length; i++) {
    backStars[i] = new Stars();
  }
  for (int i = 0; i<20; i++) {
    Asteroid anAsteroid = new Asteroid();
    backAsteroids.add(anAsteroid);
    anAsteroid.accelerate(.01);
  }
  tick = 0;
  healthBar = 5;
  gameOverTick = 0;
}
public void draw() 
{
  if (healthBar != 0 && backAsteroids.size()!=0) {
    background(0);
    player.move();
    player.show();
    for (Stars tempStar : backStars) {
      tempStar.show();
    }
    for (int i = 0; i<playerBullets.size(); i++) {
      playerBullets.get(i).move();
      playerBullets.get(i).show();
      if (playerBullets.get(i).getX()>width || playerBullets.get(i).getX()<0 || playerBullets.get(i).getY()>height || playerBullets.get(i).getY() < 0) {
        playerBullets.remove(i); 
      }
    }
    for (int i = 0; i< healthBar; i++) {
      noFill();
      stroke(0, 255, 0);
      rect(5+15*i, 585, 10, 10);
    }
    for (int i = 0; i<backAsteroids.size(); i++) {
      if (dist(backAsteroids.get(i).getX(), backAsteroids.get(i).getY(), player.getX(), player.getY())<20) {
        backAsteroids.remove(i);
        healthBar--;
      } else {
        backAsteroids.get(i).move();
        backAsteroids.get(i).show();
      }
    }
    for (int j = 0; j<playerBullets.size(); j++) {
      for (int i = 0; i<backAsteroids.size(); i++) {
        if (dist(playerBullets.get(j).getX(), playerBullets.get(j).getY(), backAsteroids.get(i).getX(), backAsteroids.get(i).getY())<20) {
          playerBullets.remove(j);
          backAsteroids.remove(i);
          break;
        }
      }
    }
  } else {
    reset();
  }
tick++;
}


public void keyPressed() {
  if (key == 'a')
    player.turn(-3);
  if (key == 'd')
    player.turn(3);
  if (key == 'w')
    player.accelerate(.1);
  if (key == ' ' && tick>20) {
    playerBullets.add(new Bullet(player));
    tick = 0;
  }
  if (key == 's') {
    player.setX((int)(Math.random()*900));
    player.setY((int)(Math.random()*600));
    player.setPointDirection((int)(Math.random()*360));
    player.setDirectionX(0);
    player.setDirectionY(0);
  }
}

public void reset() {
  background(0);
  fill(255);
  textSize(50);
  if (backAsteroids.size()==0)
    text("Congratulations!", 250, 300);
  else
    text("Game Over", 315, 300);
  gameOverTick++;
  if (gameOverTick>100) {
    gameOverTick = 0;
    player = new Spaceship();
    healthBar = 5;
    for (int i = backAsteroids.size()-1; i>=0; i--)
      backAsteroids.remove(i);
    for (int i = 0; i<20; i++) {
      Asteroid anAsteroid = new Asteroid();
      backAsteroids.add(anAsteroid);
      anAsteroid.accelerate(.01);
    }
  }
}