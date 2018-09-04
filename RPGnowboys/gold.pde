class gold
{
  float x, y, w, h, size;
  float startX, startY, endX, endY;
  float gd_startX, gd_startY, gd_endX, gd_endY, gd_w;
  int gold;
  String dis = "Gold : ";
  
  gold()
  {
    x = -width/2+24;
    y = -height/2+106;
    
    w = 160;
    h = 32;
    
    gold = 500;
    
    startX = -width/2+10;
    startY = -height/2+94;
    
    endX = startX + w;
    endY = startY;
    
    gd_startX = startX;
    gd_startY = startY;
    
  }
  
  void show()
  {
    pushStyle();
    
    fill(51, 100);
    quad(startX, startY, startX, startY+h, endX, endY+h, endX, endY);
 
    popStyle();
    
    pushStyle();
    
    fill(#FFCD00);
    
    gd_w = map(gold, 0, 999, 0, w);
    
    gd_endX = gd_startX + gd_w;
    gd_endY = gd_startY;
    
    quad(gd_startX, gd_startY, gd_startX, gd_startY+h, gd_endX, gd_endY+h, gd_endX, gd_endY);
    
    popStyle();
    
    pushStyle();
    
    fill(255);
    textSize(16);
    textAlign(LEFT, CENTER);

    text(dis + gold, x, y);
    
    popStyle();
  }
  
  boolean canBuy(int p)
  {
    switch(p) 
    {
      case 1: 
        if(gold >= shop.IH_price)
        {
          return true;
        }
        break;
      case 2:
        if(gold >= shop.IA_price)
        {
          return true;
        }
        break;
      case 3:
        if(gold >= shop.IR_price)
        {
          return true;
        }
      case 4:
        if(gold >= shop.HP_price)
        {
          return true;
        }
    }
    return false;
  }
}