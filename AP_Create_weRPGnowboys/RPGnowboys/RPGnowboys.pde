gold gold;
health health;
player player;
environment env;
shop shop;
inv inv;

float vel = 3;

PImage grass;

ArrayList<tree> trees = new ArrayList<tree>();
ArrayList<grass> grassL = new ArrayList<grass>();

void setup() 
{
  
  size(1024, 576);
  
  grass = loadImage("grass.png");
  
  gold = new gold();
  health = new health();
  env = new environment();
  player = new player();
  shop = new shop();
  inv = new inv();  
}

void draw()
{
  translate(width/2, height/2);
  noStroke();
  background(#2B7EE0);
  
  env.showGround();
  env.showSun();
  env.showTrees();
  env.showGrass();
  
  player.show();
  health.show();
  gold.show();
}

void keyPressed()
{
  if (key == ' ') 
  {
    //player.attack();
    health.updateHealth(-1);
  }
  
  if( key == CODED)
  {
    if (keyCode == UP)
    {
      //shop.open();
      shop.incHealth();
    }
    if (keyCode == DOWN)
    {
      inv.usePotion();
    }
  }
  
  else
  {
    
  }
  
}