class waves
{
  int currentWave, killsToNext, lifeSpan;
  String disp;
  boolean show = false;
  waves()
  {
    currentWave = 1;
    killsToNext = 20;
    disp = updateText(currentWave);
    lifeSpan = 0;
  }
  void update()
  {
    if(lifeSpan > 300)
    {
      show = false;
    }
    else if(show)
    {
      lifeSpan++;
    }
    
    if(gamePlay.cakesKilled < killsToNext)
    {
      
    }
    else
    {
      nextWave();
    }
  }
  void nextWave()
  {
    currentWave++;
    killsToNext = (killsToNext * 3) + 5;
    gamePlay.addCupcakes(5);
    
    disp = updateText(currentWave);
    show = true;
  }
  String updateText(int wave)
  {
    String a = "Wave: " + wave;
    return a;
  }
  void show()
  {
    pushMatrix();
    
    textFont(scoreFont, 32);  
    textAlign(CENTER);
    textSize(40);
    fill(255);
    if(show)
    {
      text(disp, 0, -height/6); 
    }
    popMatrix();
  }
}