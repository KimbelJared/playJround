class laser
{
  float x = shark.size/4, y = 0, a, vel = 5;
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
    float lasTempX = gamePlay.getX(a, x);
    
    float d = dist(lasTempX, lasTempY, thisCake.x, thisCake.y);
    
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