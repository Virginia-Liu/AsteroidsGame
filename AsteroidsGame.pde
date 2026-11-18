Spaceship bob = new Spaceship();
Star[] stars = new Star[100];
 public void setup() 
{
  size(400,400);
  background(0);
  for(int i = 0; i <100; i++) {
    stars[i] = new Star ();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<100;i++){
    stars[i].show();}
  bob.move();
  bob.show();
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
