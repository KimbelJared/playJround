class cupcake
{
  float size = 30, vel = gamePlay.vel;
  float x, y, s, a, value;
  PImage asset;
  
  cupcake()
  {
    reset(); 
  }
  
  void show()
  {
    pushMatrix();
    
    imageMode(CENTER);
    
    rotate(int(a));
    
    image(asset, int(x), y);
    
    popMatrix();
  }
  
  void update()
  {
    x -= vel;
    
    float d = dist(0, 0, x, y);
    
    if( d < shark.size/2)
    {
      reset();
      
      
    } 
  }
  
  void reset()
  {
    x = random((width/2), (width/2)+size*1.5);
    
    a = random(-180,180);
    
    s = random(0,7);
    asset = loadImage("evil_cupcake_" + int(s) + ".png");
    value = s * 2;
  }
}