class player
{
  float x, y, size;
  
  player()
  {
    x = 0;
    y = env.groundY-30;
    size = 30;
  }
  
  void show()
  {
    pushStyle();

    fill(#7CE02B);
    
    ellipse(x, y, size, size);
    
    popStyle();
  }
  
  void ded()
  {
    vel = 0;
    
  }
}