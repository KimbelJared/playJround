class cupcake
{
  float size = 30;
  float x, y, vel = .01;
  PImage asset;
  
  cupcake()
  {
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    
  }
  
  void show()
  {
    pushMatrix();
    
    colorMode(RGB, 255, 255, 255);
    noStroke();
    fill(211, 197, 227);
    ellipse(x, y, size, size);
    
    popMatrix();
    
  }
  
  void update()
  {
    x = lerp(x, 0, vel);
    y = lerp(y, 0, vel);
    
    float d = dist(0, 0, x, y);
    
    if( d < shark.size/2)
    {
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
    } 
  }
}