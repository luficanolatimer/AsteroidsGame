 Star[] nightSky = new Star[200];
Spaceship bob = new Spaceship();
ArrayList<Asteroid> joe = new ArrayList<Asteroid>();
public void setup() 
{
  size(500, 500);
  for(int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for(int i = 0; i < 20; i++) {
    joe.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  for(int i = 0; i < joe.size(); i++) {
    joe.get(i).show();
    joe.get(i).move();
    float distance = dist((float)bob.getX(), (float)bob.getY(), (float)joe.get(i).getX(), (float)joe.get(i).getY());
    if(distance < 15) {
      joe.remove(i);
    }
  }
}
public void keyPressed() {
  if(key == 'a') {
    bob.turn(-5);
  } else if (key == 'd') {
    bob.turn(5);
  } else if(key == '4') {
    bob.accelerate(0.3);
  } else if(key == '3') {
    bob.accelerate(-0.3);
  }
}
