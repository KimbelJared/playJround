class shark
{
  float x = 0,  y = 0, size = 20, angle = 1;
  
   void show()
   {
      pushMatrix();
      colorMode(RGB, 255, 255, 255);
      noStroke();
      fill(0, 115, 252);
      rectMode(CENTER);
      
      rotate(PI/angle);
      rect(x, y, size, size);
      
      popMatrix();
   }
  
      void keyPressed() 
      {
        if (key == CODED)
        {
          if(keyCode == RIGHT)
          {
            angle = angle + 1;
          }

          else if (keyCode == LEFT) 
          {
             angle = angle - 1;
          } 
          else
          {
            
          }
        }
        
      }
          

}
      
     