class cupcake
{
  float size = 30;
  float x, y, s, a, vel = gamePlay.vel;
  PImage asset;
  
  cupcake()
  {
    x = random((width/2), (width/2)+size*1.5);
    a = random(0,359);
    
    s = random(0,7);
    asset = loadImage("evil_cupcake_" + int(s) + ".png");
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
      x = random((width/2)-size, (width/2)+size*1.5);
      a = random(0,359);
      
      asset = loadImage("evil_cupcake_" + int(s) + ".png");
    } 
  }
}