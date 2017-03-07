class shark
{
  float x = 0,  y = 0, size = 64, angle = 1;
  PImage rest = loadImage("laser_shark_1.png");
  PImage shoot = loadImage("laser_shark_2.png");
   void show()
   {
      pushMatrix();
      
      imageMode(CENTER);
      
      rotate(angle);
      
      image(rest, x, y);
      
      popMatrix();
   }
   void update()
   {
     
     
   }
}
      
     