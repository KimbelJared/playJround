class gameplay
{
  float vel, scoreMulti;
  
  gameplay()
  {
    vel = 1;
    scoreMulti = 3;
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
  
  float getY(float angle, float dist)
  {
    return sin(angle) * dist;
  }
  
  void showGUI()
  {
    score.show();
    score.update();
  
    hearts.show();
    hearts.update();
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
}