class score
{
  float size, x = width/2-size-16, y = height/2-size-16, score;
  
  score()
  {
    size = 20;
    score = 0;//-2147483648;
  }
  
  void show()
  {
    pushMatrix();
    
    textFont(scoreFont, 32);  
    textAlign(RIGHT);
    textSize(size);
    fill(255);
    text(score, x, y, -30); 
    
    popMatrix();
    
  }  
  
  void hit(cupcake thisCake, laser thisLaser)
  {
    score += thisCake.value;
    
    thisLaser.show = false;
    
    thisCake.reset();
  }
}