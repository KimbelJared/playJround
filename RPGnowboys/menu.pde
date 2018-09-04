class menu
{
  int clickedX, clickedY;
  
  menu()
  {
    
  }
  
  
  
  void updateClickCoord(int x, int y)
  {
    clickedX = x - (width/2);
    clickedY = y - (height/2);
  }
  
  void resetMouse()
  {
    clickedX = 0;
    clickedY = 0;
  }
}