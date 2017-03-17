class gold
{
  float x, y, size;
  int gold, buffer;
  String dis = "Gold : ";
  gold()
  {
    buffer = 58;
    x = -width/2+24;
    y = -height/2+buffer;
    gold = 5;
  }
  
  void show()
  {
    pushStyle();
    
    fill(#E8CD31);
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
    }
    return false;
  }
}