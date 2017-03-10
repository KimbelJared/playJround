class cupcake
{
  float size = 30, vel = gamePlay.vel;
  float x, y, s, xb, yb, value;
  PImage asset;
  boolean toLeft, toTop;
  
  cupcake()
  {
    reset(); 
  }
  
  void show()
  {
    pushMatrix();
    
    imageMode(CENTER);
    
    image(asset, int(x), int(y));
    //text(x, int(x)+20, int(y)+20);
    //text(y, int(x)+20, int(y)-20);
    popMatrix();
  }
  
  void update()
  {
    x = lerp(x, 0, gamePlay.cakeSpeed);
    y = lerp(y, 0, gamePlay.cakeSpeed);
    
    float d = dist(0, 0, x, y);
    
    if( d < shark.size/2)
    {
      reset();
    } 
  }
  
  void reset()
  {
    x = random(width/2 - 100, width/2 + 100);
    
    y = random(-height/2, height/2);
    
    s = random(0,7);
    xb = random(0,2);
    yb = random(0.2);
    
    asset = loadImage("evil_cupcake_" + int(s) + ".png");
    value = s * 2;
    
    setX();
    setY();
    
  }
  
  void setX()
  {
    if(int(xb) == 1)
    {
      x = int(-x);
    }
  }
  
  void setY()
  {
    if(int(yb) == 1)
    {
      y = int (-y);
    }
  }
}