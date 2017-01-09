player player;

void setup() 
{
  size(800, 400);
  noStroke();
  player = new player(); 
}

void draw()
{
  background(51);
  
  player.update();
  player.show(); 
  if (keyPressed) 
  {
    PVector up = new PVector(0, -5);
    player.applyForce(up);
  }
}