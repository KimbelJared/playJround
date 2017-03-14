class health
{
  float max_health, cur_health;
  float startX, startY, endX, endY;
  float textX, textY;
  float w, h, buffer;
  String dis = "HPHP : ";
  health()
  {
    buffer = 10;
    w = 160;
    h = 32;
    startX = -width/2+buffer;
    startY = -height/2+buffer;
    endX = startX + w;
    endY = startY; 
    max_health = 10;
    cur_health = 10;
    
    textX = -width/2+58;
    textY = -height/2+16;
  }
  
  void show()
  {
    pushStyle();
    
    fill(#FA0D0D, 200);
    quad(startX, startY, startX, startY+h, endX, endY+h, endX, endY);
    
    popStyle();
    
    pushStyle();
    
    fill(255);
    textSize(16);
    textAlign(CENTER, CENTER);

    text(dis + cur_health, textX, textY);
    popStyle();
  }
  
  void update()
  {
    
  }  
}