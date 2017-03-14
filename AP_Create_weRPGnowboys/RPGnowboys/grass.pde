class grass
{
  float x, y, w, h;
  PImage im;
  grass()
  {
    init();
    im = grass;
  }
  
  void init()
  {
    w = 64;
    h = 32;
    x = int(random(width/2, width));
    y = height/8-(h/2);
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
    if(x <= -width/2)
    {
      init();
    }
  }
}