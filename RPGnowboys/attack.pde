class attack
{
  float at;
  float startX, startY, endX, endY;
  float textX, textY;
  float w, h;
  String dis = "Attack : ";
  
  attack()
  {
    at = 5;
    w = 160;
    h = 32;
    
    startX = -width/2+10;
    startY = -height/2+52;
    
    endX = startX + w;
    endY = startY; 
    
    textX = -width/2+24;
    textY = -height/2+64;
  }
  
  void show()
  {
    pushStyle();
    
    fill(#009BFF);
    quad(startX, startY, startX, startY+h, endX, endY+h, endX, endY);
 
    popStyle();
    
    pushStyle();
    
    fill(255);
    textSize(16);
    textAlign(LEFT, CENTER);

    text(dis + at, textX, textY);
    popStyle();
  }
}