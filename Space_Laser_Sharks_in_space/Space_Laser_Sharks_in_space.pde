

ArrayList<cupcake> cupcakes = new ArrayList<cupcake>();

Shark Shark;

void setup() 
{
  size(800, 600);
  for(int i = 0; i < 25; i++)
  {
      cupcakes.add(new cupcake());
  }
  Shark = new Shark();
}

void draw()
{
  background(51);
  translate(width/2, height/2);
  
  for (cupcake currCake : cupcakes)
  {
    currCake.show();
    currCake.update();
  } 
  Shark.show();
}