class tree
{
  float x, y, w, h;
  
  tree()
  {
    w = 32;
    h = 96;
    x = int(random(-width/2, width/2));
    y = height/8-(h/2);
  }
  
  void init()
  {
    w = 32;
    h = 96;
    x = int(random(width/2, width/2+width/3));
    y = height/8-(h/2);
  }
  
  void show()
  {
    pushStyle();
    
    fill(#5D3815);
    rectMode(CENTER);
    rect(x, y, w, h);
    
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