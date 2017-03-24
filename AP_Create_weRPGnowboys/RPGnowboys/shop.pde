class shop
{
  int ICON_X = -width/4+50, ICON_Y = -height/4+36;
  
  int IH_price, IA_price, IR_price, HP_price;
  float windowW = width/2, windowH = height/2, windowX, windowY;
  boolean show_shop;
  
  shop()
  {
    IH_price = 5;
    IA_price = 5;
    IR_price = 50;
    HP_price = 10;
  }
  
  void open()
  {
    show_shop = true;
    menu.resetMouse();
  }
  
  void close()
  {
    show_shop = false;
    menu.resetMouse();
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
      
      drawLines();
      disHpInc();
      disAtInc();
      disHRInc();
      disHpPot();
    }
  }
  
  void drawLines()
  {
    int x = ICON_X, y = ICON_Y + 180; 
    
    pushStyle();
    
    strokeWeight(3);
    stroke(51);
    
    line(x, y, x + (windowW - 100), y);
    
    popStyle();
  }
  
  boolean check(int x, int y)
  {
    float d = dist(x, y, menu.clickedX, menu.clickedY);
    
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
      
      pushStyle();
      
      text("Increase Health", x + 50, y);
      
      popStyle();
      
      boolean playBuy = check(x, y);
      
      if(playBuy)
      {
        incHp();
        menu.resetMouse();
      }
      
  }
  
  void disHRInc()
  {
      float a;
      boolean canBuy = gold.canBuy(3);
      int x = ICON_X, y = ICON_Y + 72;
      
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
      
      pushStyle();
      
      text("Increase Health Regen", x + 50, y);
      
      popStyle();
      
      boolean playBuy = check(x, y);
      
      if(playBuy)
      {
        incHR();
        menu.resetMouse();
      }
  }
  
  void disAtInc()
  {
      float a;
      boolean canBuy = gold.canBuy(2);
      int x = ICON_X, y = ICON_Y + 144;
      
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
      
      pushStyle();
      
      text("Increase Attack", x + 50, y);
      
      popStyle();
      
      boolean playBuy = check(x, y);
      
      if(playBuy)
      {
        incAt();
        menu.resetMouse();
      }
  }
  
  void disHpPot()
  {
      float a;
      boolean canBuy = gold.canBuy(4);
      int x = ICON_X, y = ICON_Y + 216;
      
      if(canBuy)
      {
        a = 200;
      }
      else
      {
        a = 100;
      }
      
      pushStyle();
      
      fill(#D931FF, a);
      rectMode(CENTER);
      rect(x, y, 50, 50);
      
      popStyle();
      
      pushStyle();
      
      text("Purchase Health Potion", x + 50, y);
      
      popStyle();
      
      boolean playBuy = check(x, y);
      
      if(playBuy)
      {
        incAt();
        menu.resetMouse();
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
      attack.at += 5;
      IA_price += (IA_price/2);
    }
    
  }
  
  void incHR()
  {
    boolean canBuy = gold.canBuy(3);
    if(canBuy)
    {
      gold.gold -= IR_price;
      IR_price *= 2;
      health.regenRate++;
    }
    
  }
}