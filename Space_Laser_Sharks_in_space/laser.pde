class laser
{
  float x, y, vel = 5;
  PImage asset = loadImage("laser.png");
  laser()
  {
    x = 32;
    y = 32;
  }
  
  void show()
  {
    image(asset, x, y);    
  }
  
  void update()
  {
    y += vel;
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}