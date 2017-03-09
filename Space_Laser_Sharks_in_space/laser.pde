class laser
{
  float x = 32, y = 0, a, vel = 5;
  PImage asset = loadImage("laser.png");
  laser()
  {
    a = shark.angle;
  }
  
  void show()
  {
    pushMatrix();
    
    rotate(a);
    image(asset, x, 0); 
    
    popMatrix();
  }
  
  void update()
  {
    x += vel;
  }
  
  boolean tagged(cupcake thisCake)
  {
    float cakeTempY = gamePlay.getY(thisCake.a, thisCake.x);
    float lasTempY = gamePlay.getY(a, x);
    
    float d = dist(x, lasTempY, thisCake.x, cakeTempY);
    
    if (d < thisCake.size)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}