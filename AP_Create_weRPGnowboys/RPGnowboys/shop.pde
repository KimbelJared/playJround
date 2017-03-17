class shop
{
  float ICON_X = -width/4+50, ICON_Y = -height/4+50;
  
  int IH_price, IA_price;
  float windowW= width/2, windowH = height/2, windowX, windowY;
  boolean show_shop;
  shop()
  {
    IH_price = 5;
    IA_price = 5;
  }
  
  void open()
  {
    show_shop = true;
  }
  
  void close()
  {
    show_shop = false;
  }
  
  void show()
  {
    if(show_shop)
    {
      pushStyle();
      
      fill(51, 100);
      rectMode(CENTER);
      rect(windowX, windowY, windowW, windowH);
    
      popStyle();
      
      disHpInc();
      disAtInc();
      
    }
  }
  
  void disHpInc()
  {
      float a;
      boolean canBuy = gold.canBuy(1);
      float x = ICON_X, y = ICON_Y;
      
      if(canBuy)
      {
        a = 200;
      }
      else
      {
        a = 100;
      }
      
      pushStyle();
      
      fill(#FF0000, a);
      rectMode(CENTER);
      rect(x, y, 50, 50);
    
      popStyle();
  }
  
  void disAtInc()
  {
      float a;
      boolean canBuy = gold.canBuy(2);
      float x = ICON_X, y = ICON_Y + 75;
      
      if(canBuy)
      {
        a = 200;
      }
      else
      {
        a = 100;
      }
      
      pushStyle();
      
      fill(#00FF00, a);
      rectMode(CENTER);
      rect(x, y, 50, 50);
    
      popStyle();
  }
  
  void incHp()
  {
    boolean canBuy = gold.canBuy(1);
    if(canBuy)
    {
      gold.gold -= IH_price;
      health.max_health += 5;
      inv.restore = health.max_health / 10;
    }
    
  }
}