Spaceship bob = new Spaceship();
Asteroid rocks = new Asteroid();
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
Star[] stars = new Star[100];
 public void setup() 
{
  size(400,400);
  background(0);
  for(int i = 0; i <100; i++) {
    stars[i] = new Star ();}
  for(int a = 0; a<2; a++){
    asteroids.add(new Asteroid());

  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<100;i++){
    stars[i].show();}
  bob.move();
  bob.show();
  
  for(int i = asteroids.size()-1; i>=0; i--){
  Asteroid a = asteroids.get(i);
  float d = dist((float)bob.getX(), (float)bob.getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY());
  if(d<10){
    asteroids.remove(i);
  }
  else{
   asteroids.get(i).move();
   asteroids.get(i).show();
  }
  }
}
public void keyPressed(){
  if(key == 'a' || keyCode ==LEFT )
    bob.turn(-5);
  if(key == 'd' || keyCode ==RIGHT )
    bob.turn(5);
  if(key == 'w' || keyCode ==UP )
    bob.accelerate(0.5);
  if(key == 's' || keyCode ==DOWN )
    bob.accelerate(-0.5);
  if(key==' ')
    bob.hyperspace();
}
