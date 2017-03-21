class health
{
  int max_health, cur_health, regenRate, sec;
  float startX, startY, endX, endY;
  float hb_startX, hb_startY, hb_endX, hb_endY, hb_w;
  float textX, textY;
  float w, h, buffer;
  String dis = "HP : ";
  health()
  {
    buffer = 10;
    w = 160;
    h = 32;
    
    startX = -width/2+buffer;
    startY = -height/2+buffer;
    
    endX = startX + w;
    endY = startY; 
    
    hb_startX = startX;
    hb_startY = startY;
    
    max_health = 10;
    cur_health = 10;
    regenRate = 0;
    sec = 0;
    
    textX = -width/2+24;
    textY = -height/2+24;
    
  }
  
  void show()
  {
    pushStyle();
    
    healthRegen();
    
    fill(51, 100);
    quad(startX, startY, startX, startY+h, endX, endY+h, endX, endY);
 
    popStyle();
    
    hb_w = map(cur_health, 0, max_health, 0, w);
    
    hb_endX = hb_startX + hb_w;
    hb_endY = hb_startY;
    
    pushStyle();
    
    fill(#FA0D0D, 200);
    quad(hb_startX, hb_startY, hb_startX, hb_startY+h, hb_endX, hb_endY+h, hb_endX, hb_endY);
 
    popStyle();
    
    pushStyle();
    
    fill(255);
    textSize(16);
    textAlign(LEFT, CENTER);

    text(dis + cur_health, textX, textY);
    popStyle();
  }
  void healthRegen()
  {
    if(regenRate > 0)
    {
      if(frameCount % 60 == 0)
      {
        sec++;
        if(sec >= 5)
        {
          updateHealth(1 * regenRate);
          sec = 0;
        }
      }
    }
  }
  void updateHealth(int f)
  {
    if (cur_health <= 0)
    {
      vel = 0;
    }
    else if (f < 0)
    {
      cur_health += f;
    }
    else if (f > 0)
    {
      if(cur_health + f > max_health)
      {
        cur_health = max_health;
      }
      else
      {
        cur_health += f;
      }
    }
  }  
}