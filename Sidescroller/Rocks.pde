class rock
{
  float size = 10;
  float x, y, vel = 5;
  rock()
  {
    x = random(width-50, width+500);
    y = random(0+size, height-size);
  }
  
  void show()
  {
    //stroke(255);
    //fill(255);
    //ellipse(x, y, size, size);
    
    imageMode(CENTER);
    image(rockImage, x, y);
  }
  
  void update()
  {
    x -= vel;
    if( x <= 0 )
    {
       x = random(width-50, width+50);
       y = random(0+size, height-size);
    } 
  }
    
}