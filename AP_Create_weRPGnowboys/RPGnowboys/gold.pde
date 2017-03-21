class gold
{
  float x, y, size;
  float startX, startY, endX, endY;
  int gold;
  float w, h;
  String dis = "Gold : ";
  gold()
  {
    x = -width/2+24;
    y = -height/2+106;
    
    w = 160;
    h = 32;
    
    gold = 5;
    
    startX = -width/2+10;
    startY = -height/2+94;
    
    endX = startX + w;
    endY = startY;
    
    
  }
  
  void show()
  {
    pushStyle();
    
    fill(#FFCD00);
    quad(startX, startY, startX, startY+h, endX, endY+h, endX, endY);
 
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
    }
    return false;
  }
}