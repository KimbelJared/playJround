class score
{
  float size = 20;
  float x, y;
  int test;
  int score = -2147483648;
  
  score()
  {
    
  }
  
  void show()
  {
    pushMatrix();
    
    textFont(scoreFont, 32);  
    textAlign(RIGHT);
    textSize(size);
    fill(0);
    text(score, width-size, height-size, -30); 
    
    popMatrix();
    
  }
  
  void update()
  {
    
  }  
}