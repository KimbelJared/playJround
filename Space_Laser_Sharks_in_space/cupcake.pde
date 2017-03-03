class cupcake
{
  float size = 10;
  float x, y, a, vel = .01;
  cupcake()
  {
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    a = random(0,359);
  }
  
  void show()
  {
    stroke(255);
    fill(45);
    ellipse(x, y, size, size);
    //rotate(a);
  }
  
  void update()
  {
    x = lerp(x, 0, vel);
    y = lerp(y, 0, vel);
    
    float d = dist(0, 5, x, 5);
    
    if( d < 5 )
    {
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
    } 
  }
}