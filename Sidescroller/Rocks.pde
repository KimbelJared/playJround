class rock
{
  float size = 10;
  float x, y, vel = 5;
  rock()
  {
    x = width;
    y = random(0+size, height-size);
  }
  
  void show()
  {
    stroke(255);
    fill(255);
    ellipse(x, y, size, size);
    
  }
  
  void update()
  {
    x -= vel;
    
  }
    
}