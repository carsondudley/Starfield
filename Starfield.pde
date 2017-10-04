//double myX = 200;
//double myY = 200;
    NormalParticle Bob[] = new NormalParticle[1000];
    JumboParticle Eddie = new JumboParticle((double)Math.random() * 360);
    OddballParticle Joe = new OddballParticle();

void setup()
{
	background(0);
  size(600, 600);
  for (int i = 0; i < Bob.length; i++) {
    Bob[i] = new NormalParticle((double)Math.random() * 360);
  }

}

 
void draw()
{
  background(0);
  for (int i = 0; i < Bob.length; i++) {
    Bob[i].show();
    Bob[i].move();
  }
  Eddie.move();
  Eddie.show();
  Joe.move();
  Joe.show();
  
//Bob.show();
//  Bob.move();

  
}
class NormalParticle implements Particle
{
  double myX;
  double myY;
  double myAngle;
  double mySpeed;
  NormalParticle(double angle) {
    myX = 300;
    myY = 300;
    mySpeed = (Math.random() * 10);
    myAngle = angle;
  }
  public void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
  public void show() {
    fill(255);
    ellipse((int)myX, (int)myY, 10, 10);
  }
}

interface Particle
{
	public void move();
  public void show();
}
class OddballParticle implements Particle
{
	int sqX;
  int sqY;
  OddballParticle() {
    sqX = 100;
    sqY = 100;
  }
  public void move() {
    sqX += (int)(Math.random() * 3 - 1);
    sqY += (int)(Math.random() * 3 - 1);
  }
  public void show() {
    fill(255, 0, 0);
    rect(sqX, sqY, 10, 10);
  }
}
class JumboParticle
{
	double myX;
  double myY;
  double myAngle;
  double mySpeed;
  JumboParticle(double angle) {
    myX = 300;
    myY = 300;
    mySpeed = (Math.random() * 10);
    myAngle = angle;
  }
  public void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
  public void show() {
    fill(0, 80, 0);
    ellipse((int)myX, (int)myY, 50, 50);
  }
}
