class tree
{
  float x, y, size, vel;
  
  tree()
  {
    vel = 3;
    x = width/2;
    y = 0;
  }
  
  void show()
  {
    pushStyle();
    
    rectMode(CENTER);
    rect(x, y, 50, 50);
    
    popStyle();
  }
  
  void update()
  {
    x -= vel;
  }
}