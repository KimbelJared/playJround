class shark
{
  float x,  y, size, angle, rot;
  PImage rest = loadImage("laser_shark_1.png");
  PImage shoot = loadImage("laser_shark_2.png");
  shark()
  {
    x = 0; 
    y = 0;
    size = 64;
    angle = 0;
  }
  void show()
  {
     pushMatrix();
     
     imageMode(CENTER);
     
     update(); 
     rotate(rot);
      
     image(rest, x, y);
      
     popMatrix();
  }
  void update()
  {
    rot = radians(angle);
    
    
  }
}
      
     