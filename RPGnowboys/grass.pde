class grass
{
  float x, y, w, h;
  PImage im;
  
  grass()
  {
    w = 64;
    h = 32;
    x = int(random(-width/2, width/2));
    y = int(random(height/8, height/2));
    im = grass;
  }
  
  void init()
  {
    w = 64;
    h = 32;
    x = int(random(width/2, width/2+width/3));
    y = int(random(height/8, height/2));
  }
  
  void show()
  {
    pushStyle();
    
    imageMode(CENTER);
    image(im, x, y, w, h);
    
    popStyle();
  }
  
  void update()
  {
    x -= vel;
    
    if(x+w/2 <= -width/2)
    {
      init();
    }
  }
}