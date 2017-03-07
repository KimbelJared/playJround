ArrayList<cupcake> cupcakes = new ArrayList<cupcake>();
shark shark;
score score;
PFont scoreFont;
void setup() 
{
  size(800, 600);
  scoreFont = loadFont("scoreFont.vlw");
  for(int i = 0; i < 25; i++)
  {
      cupcakes.add(new cupcake());
  }
  shark = new shark();
  score = new score();
  
}

void draw()
{
  background(51);
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