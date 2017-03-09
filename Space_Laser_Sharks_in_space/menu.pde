class menu
{
  String title = "Space Laser Sharks";
  String title2 = "In Space";
  boolean showMenu = true, startGame = true;
  
  void startGame()
  {
    gamePlay.showGUI();
    gamePlay.showAssets();
  }
  
  void showMenu()
  {
    pushMatrix();
    
    textFont(scoreFont, 32); 
    fill(185);
    textSize(50);
    textAlign(CENTER);
    text(title, 0, -height/4);
    text(title2, 0, -height/4+50);
    
    
    popMatrix();
  }
}