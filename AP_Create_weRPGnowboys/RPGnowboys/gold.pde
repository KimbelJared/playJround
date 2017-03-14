class gold
{
  float x, y, size;
  int gold, buffer;
  String dis = "Gold: ";
  gold()
  {
    buffer = 58;
    x = -width/2+buffer;
    y = -height/2+buffer;
    gold = 5;
  }
  
  void show()
  {
    pushStyle();
    
    fill(#E8CD31);
    textSize(16);
    textAlign(CENTER, CENTER);

    text(dis + gold, x, y);
    
    popStyle();
  }
  
  void update()
  {
    
  }
}