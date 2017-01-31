player player;
//ArrayList<rock> rocks = new ArrayList<rock>();
rock rock;
void setup() 
{
  size(800, 400);
  noStroke();
  player = new player(); 
  rock = new rock();
}

void draw()
{
  background(51);
  
  rock.show();
  rock.update();
  
  player.update();
  player.show(); 
  
  if (keyPressed) 
  {
    PVector up = new PVector(0, -5);
    player.applyForce(up);
  }
}