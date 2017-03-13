gold gold;
health health;
player player;
environment env;
ArrayList<tree> trees = new ArrayList<tree>();

void setup() 
{
  
  size(1024, 576);
  
  gold = new gold();
  health = new health();
  env = new environment();
  player = new player();

}

void draw()
{
  translate(width/2, height/2);
  noStroke();
  background(#2B7EE0);
  
  player.show();
  env.showGround();
  env.showSun();
  env.showTrees();
}