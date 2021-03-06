class gameplay
{
  float vel, scoreMulti;
  float cakeSpeed;
  int cakesKilled;
  gameplay()
  {
    cakeSpeed = .003;
    scoreMulti = 3;
    cakesKilled = 0;
  }
  
  void checkLasers()
  {
    for (laser currLaser : lasers)
    {
      for (cupcake currCake : cupcakes)
      {
        boolean b = currLaser.tagged(currCake);
        
        if(b)
        {
          score.hit(currCake, currLaser);
        }
      } 
    }
  }
  
  float getY(float angle, float dist, int quad)
  {
    if(angle <= radians(180))
    {
      return (sin(angle) * dist);
    }
    else
    {
      return -(sin(angle) * dist);
    }
  }
  
  float getX(float angle, float dist)
  {
    if(angle <= radians(90) || angle >= radians(270))
    {
      return (cos(angle) * dist);
    }
    else
    {
      return -(cos(angle) * dist);
    }
  }
  
  void gameOver()
  {
    menu.showMenu = false;
    menu.startGame = false;
    menu.showScoreboard = true;
  }
  
  void addCupcakes(int num)
  {
    for(int i = 0; i < num; i++)
    {
      cupcakes.add(new cupcake());
    }  
  }
  
  void showGUI()
  {
    score.show();
  
    hearts.show();
    hearts.update();
    
    waves.show();
    waves.update();
  }
  
  void showAssets()
  {
    shark.show();
    gamePlay.checkLasers();
    
    for (cupcake currCake : cupcakes)
    {
      currCake.show();
      currCake.update();
    } 
    for (laser currLaser : lasers)
    {
      currLaser.show();
      currLaser.update();
    }
  }
  
  void reset()
  {
    shark.angle = 0;
    hearts.health = 6;
    cakesKilled = 0;
    score.score = 0;
    menu.showScoreboard = false;
    cupcakes.removeAll(cupcakes);
  }
}