player player;
rock rock;
ArrayList<rock> rocks = new ArrayList<rock>();

PImage playerImage, rockImage;


void setup() 
{
  size(800, 400);
  noStroke();
  player = new player(); 
  for(int i = 0; i < 25; i++)
  {
      rocks.add(new rock());
  }
   playerImage = loadImage("assets/player.gif");
   rockImage = loadImage("assets/rock.png");
}

void draw()
{
  background(51);
  
  for (rock currRock : rocks)
  {
    currRock.show();
    currRock.update();
  } 

  player.update();
  player.show(); 
  
  if (keyPressed) 
  {
    PVector up = new PVector(0, -5);
    player.applyForce(up);
  }
}