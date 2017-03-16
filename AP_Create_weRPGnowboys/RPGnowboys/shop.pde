class shop
{
  int IH_price;
  
  shop()
  {
    IH_price = 5;
  }
  
  void incHealth()
  {
    if(gold.gold >= IH_price)
    {
      gold.gold -= IH_price;
      health.max_health += 5;
      inv.restore = health.max_health / 10;
    }
    
  }
  
  
}