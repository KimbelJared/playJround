class inv
{
  int potions, restore;
  inv()
  {
    potions = 3;
    restore = 1;
  }
  
  void usePotion()
  {
    if(potions > 0)
    {
      potions--;
      health.updateHealth(restore);
    }
    
  }
}