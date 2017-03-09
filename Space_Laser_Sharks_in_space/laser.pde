class laser
{
  float x = 32, y = 0, a, vel = 5;
  boolean show = true;
  
  PImage asset = loadImage("laser.png");
  laser()
  {
    a = shark.rot;
  }
  
  void show()
  {
    if(show)
    {
    pushMatrix();
    
    rotate(a);
    image(asset, x, 0); 
    
    popMatrix();
    }
  }
  
  void update()
  {
    x += vel;
  }
  
  boolean tagged(cupcake thisCake)
  {
    float lasTempY = gamePlay.getY(a, x, 1);
    
    float d = dist(x, lasTempY, thisCake.x, thisCake.y);
    
    if (d < thisCake.size/2)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}