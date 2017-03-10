ArrayList<cupcake> cupcakes = new ArrayList<cupcake>();

ArrayList<laser> lasers = new ArrayList<laser>();

shark shark;
score score;
gameplay gamePlay;
hearts hearts;
menu menu;
waves waves;

PFont scoreFont;
PImage background;

void setup() 
{
  size(1024, 576);
  
  scoreFont = loadFont("scoreFont.vlw");
  background = loadImage("BG.png");
  
  gamePlay = new gameplay();
  
  shark = new shark();
  score = new score();
  hearts = new hearts();
  menu = new menu();
  waves = new waves();
  
  gamePlay.addCupcakes(50);
}

void draw()
{
  background(background);
  translate(width/2, height/2);
  
  if(menu.showMenu)
  {
    menu.showMenu();
  }
  if(menu.startGame)
  {
    menu.startGame();
  }
  if(menu.showScoreboard)
  {
    menu.showScoreboard();
  }
  
}

void keyPressed() 
{
  if (key == CODED)
  {
    if(keyCode == RIGHT)
    {
       shark.angle += 5;
    }
    else if (keyCode == LEFT) 
    {
       shark.angle -= 5;
    } 
    else if (keyCode == UP)
    {
       lasers.add(new laser());
    }
    
  }
  else if (key == ENTER)
    {
      if(menu.showScoreboard)
      {
        gamePlay.reset();
      }
      
      menu.startGame = true;
    }
  else if(menu.showScoreboard)
    {
      menu.tem += key;
    }
}