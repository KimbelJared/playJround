class shark
{
  float x = 0,  y = 0, size = 20;
  
   void show()
   {
      pushMatrix();
      
      colorMode(RGB, 255, 255, 255);
      noStroke();
      fill(0, 115, 252);
      rectMode(CENTER); 
      rect(x, y, size, size);
      
      popMatrix();
   }
  
  
}