class inv
{
  int potions, restore;
  
  inv()
  {
    potions = 2;
    restore = 1;
  }
  
  void usePotion()
  {
    if(potions > 0 && health.cur_health != health.max_health)
    {
      potions--;
      health.updateHealth(restore);
    }
    
  }
}