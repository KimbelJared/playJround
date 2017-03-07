ArrayList<cupcake> cupcakes = new ArrayList<cupcake>();
PImage[] cupcakeAssets = new PImage[8];

shark shark;
score score;
PFont scoreFont;
PImage background;

int i = 0;

void settings() 
{
  fullScreen();
}



void setup() 
{
  //size(960, 540);
  scoreFont = loadFont("scoreFont.vlw");
  for(int i = 0; i < 25; i++)
  {
      cupcakes.add(new cupcake());
  }
  shark = new shark();
  score = new score();
  
  background = loadImage("BG.png");
  
  for (PImage currCake : cupcakeAssets)
  {
    currCake = loadImage("evil_cupcake_" + i);
    i++;
  }
}

void draw()
{
  background(51);
  //background(background);
  score.show();
  score.update();
  
  translate(width/2, height/2);
  
  for (cupcake currCake : cupcakes)
  {
    currCake.show();
    currCake.update();
  } 
  shark.show();
}
void keyPressed() 
{
  if (key == CODED)
  {
    if(keyCode == RIGHT)
    {
       shark.angle = shark.angle + .05;
    }

     else if (keyCode == LEFT) 
     {
        shark.angle = shark.angle - .05;
     } 
     else
     {
            
      }
    }
}