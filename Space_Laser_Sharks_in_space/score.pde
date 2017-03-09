class score
{
  float size, x, y, score;
  
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
    text(score, width-size, height-size, -30); 
    
    popMatrix();
    
  }
  
  void update()
  {
    score += (1 * gamePlay.scoreMulti);
  }  
  
  void hit(cupcake thisCake, laser thisLaser)
  {
    score += thisCake.value;
    
    lasers.remove(thisLaser);
    
    thisCake.reset();
  }
}