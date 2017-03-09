class hearts
{
  PImage full, half, empty;
  PImage heart1, heart2, heart3;
  int heart1x, heart2x, heart3x, heartsy;
  int health;
  hearts()
  {
    full = loadImage("heart_full.png");
    half = loadImage("heart_half.png");
    empty = loadImage("heart_empty.png");
    
    heart1 = full;
    heart2 = full;
    heart3 = full;
    
    heartsy = height/2 - 24;
    heart1x = -width/2 + 32;
    heart2x = heart1x+(heart2.width);
    heart3x = heart2x+(heart3.width);
    
    health = 6;
  }
  
  void show()
  {
     pushMatrix();
     
     image(heart1, heart1x, heartsy); 
     image(heart2, heart2x, heartsy); 
     image(heart3, heart3x, heartsy); 
    
     popMatrix();
  }
  void update()
  {
    
  }
}