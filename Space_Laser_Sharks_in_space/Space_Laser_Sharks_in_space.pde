ArrayList<cupcake> cupcakes = new ArrayList<cupcake>();

ArrayList<laser> lasers = new ArrayList<laser>();

shark shark;
score score;
gameplay gamePlay;
hearts hearts;

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
  
  for(int i = 0; i < 25; i++)
  {
      cupcakes.add(new cupcake());
  }
}

void draw()
{
  background(background);
  
  score.show();
  score.update();
  
  hearts.show();
  hearts.update();
  
  translate(width/2, height/2);
  
  shark.show();
  
  for (cupcake currCake : cupcakes)
  {
    currCake.show();
    currCake.update();
  } 
  for (laser currLaser : lasers)
  {
    currLaser.show();
    currLaser.update();
  }
  gamePlay.checkLasers();
  
}

void keyPressed() 
{
  if (key == CODED)
  {
    if(keyCode == RIGHT)
    {
       shark.angle = shark.angle + .075;
    }
    else if (keyCode == LEFT) 
    {
       shark.angle = shark.angle - .075;
    } 
    else if (keyCode == UP)
    {
       lasers.add(new laser());
    }
  }
}