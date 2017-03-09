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
}