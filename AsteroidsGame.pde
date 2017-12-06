Spaceship player = new Spaceship();
Stars[] backStars = new Stars[100];
//Bullet testBullet = new Bullet(player);
ArrayList <Asteroid> backAsteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> playerBullets = new ArrayList <Bullet>();
int tick;

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
}
public void draw() 
{
  background(0);
  player.move();
  player.show();
  //testBullet.show();
  //testBullet.move();
  for (Stars tempStar : backStars) {tempStar.show();}
  for (int i = 0; i<playerBullets.size(); i++) {
    playerBullets.get(i).move();
    playerBullets.get(i).show();
    System.out.println(playerBullets.get(i).getX());
    if(playerBullets.get(i).getX()>width || playerBullets.get(i).getX()<0 || playerBullets.get(i).getY()>height || playerBullets.get(i).getY() < 0) {playerBullets.remove(i); System.out.println(i);}
  }
  for (int i = 0; i<backAsteroids.size(); i++) {
    if (dist(backAsteroids.get(i).getX(), backAsteroids.get(i).getY(), player.getX(), player.getY())<20)
        backAsteroids.remove(i);
    else {
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
  tick++;
}

public void keyPressed() {
  if (key == 'a')
    player.turn(-3);
  if (key == 'd')
    player.turn(3);
  if (key == 'w')
    player.accelerate(.1);
  if (key == 's' && tick>20) {
    playerBullets.add(new Bullet(player));
    tick = 0;
  }
  if (key == ' ') {
    player.setX((int)(Math.random()*900));
    player.setY((int)(Math.random()*600));
    player.setPointDirection((int)(Math.random()*360));
    player.setDirectionX(0);
    player.setDirectionY(0);
  }
    
}