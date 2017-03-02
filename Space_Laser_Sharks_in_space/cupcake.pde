class cupcake
{
  float size = 10;
  float x, y, vel = 5;
  cupcake()
  {
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
  }
  
  void show()
  {
    stroke(255);
    fill(255);
    ellipse(x, y, size, size);

  }
  
  void update()
  {
    if(x < 0)
    {
      x += vel;
    }
    else if (x > 0)
    {
      x -= vel;
    }
    float d = dist(0, 5, x, 5);
    
    if( d < 5 )
    {
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
    } 
  }
    
}