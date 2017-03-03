class Shark
{
  float x = 0,  y = 0, w = 20, h = 20;
  
   void show()
   {
      pushMatrix();
      fill(23);
      rectMode(CENTER); 
      rect(x, y, w, h);
      popMatrix();
   }
  
  
}