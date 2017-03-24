attack attack;
gold gold;
health health;
player player;
environment env;
shop shop;
inv inv;
menu menu;

float vel = 3;

PImage grass;

ArrayList<tree> trees = new ArrayList<tree>();
ArrayList<grass> grassL = new ArrayList<grass>();

void setup() 
{
  
  size(1024, 576);
  
  grass = loadImage("grass.png");
  
  menu = new menu();
  gold = new gold();
  health = new health();
  attack = new attack();
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
  attack.show();
  health.show();
  gold.show();
  shop.show();
  
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
      shop.open();
    }
    if (keyCode == DOWN)
    {
      shop.close();
    }
    if (keyCode == LEFT)
    {
      inv.usePotion();
    }
    if (keyCode == RIGHT)
    {
      
    }
  }  
}

void mouseClicked()
{
  menu.updateClickCoord(mouseX, mouseY);
}