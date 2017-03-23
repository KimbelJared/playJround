class shop
{
  int ICON_X = -width/4+50, ICON_Y = -height/4+50;
  
  int IH_price, IA_price, IR_price;
  float windowW = width/2, windowH = height/2, windowX, windowY;
  boolean show_shop;
  
  shop()
  {
    IH_price = 5;
    IA_price = 5;
    IR_price = 50;
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
      //disAtInc();
      //disHRInc();
    }
  }
  
  boolean check(int x, int y)
  {
    float d = dist(x, y, menu.clickedX, menu.clickedY);
    text(d, 0, 50);
    text(x, 0, -100);
    text(y, 0, -120);
    if(d <= 50)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  void disHpInc()
  {
      float a;
      boolean canBuy = gold.canBuy(1);
      int x = ICON_X, y = ICON_Y;
      
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
      
      boolean playBuy = check(x, y);
      
      if(playBuy)
      {
        incHp();
      }
      
  }
  
  void disHRInc()
  {
      float a;
      boolean canBuy = gold.canBuy(2);
      int x = ICON_X, y = ICON_Y + 75;
      
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
      
      boolean playBuy = check(x, y);
      
      if(playBuy)
      {
        incHR();
      }
  }
  
  void disAtInc()
  {
      float a;
      boolean canBuy = gold.canBuy(2);
      int x = ICON_X, y = ICON_Y + 150;
      
      if(canBuy)
      {
        a = 200;
      }
      else
      {
        a = 100;
      }
      
      pushStyle();
      
      fill(#009BFF, a);
      rectMode(CENTER);
      rect(x, y, 50, 50);
      
      popStyle();
      
      boolean playBuy = check(x, y);
      
      if(playBuy)
      {
        incAt();
      }
  }
  
  void incHp()
  {
    boolean canBuy = gold.canBuy(1);
    if(canBuy)
    {
      gold.gold -= IH_price;
      health.max_health += 5;
      inv.restore = health.max_health / 10;
      IH_price += (IH_price/2);
    }
    
  }
  
  void incAt()
  {
    boolean canBuy = gold.canBuy(2);
    if(canBuy)
    {
      gold.gold -= IA_price;
    }
    
  }
  
  void incHR()
  {
    boolean canBuy = gold.canBuy(3);
    if(canBuy)
    {
      gold.gold -= IR_price;
      health.regenRate++;
    }
    
  }
}