class menu
{
  String title = "Space Laser Sharks";
  String title2 = "In Space";
  boolean showMenu = true, startGame = false, showScoreboard = false;
  
  String sb1 = "Joe = 9000", sb2 = "Bob = 8000", sb3 = "Rob = 7000", sb4 = "Frd = 6000", sb5 = "Mrk = 5000", ent = "Enter Name", tem = ""; 
  void startGame()
  {
    showMenu = false;
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
    
    text("Press Enter", 0, -height/4+250);
    
    popMatrix();
  }
  void showScoreboard()
  {
    pushMatrix();
    
    textFont(scoreFont, 32); 
    fill(185);
    textSize(50);
    textAlign(CENTER);
    text("Scoreboard", 0, -height/4-50);
    text(sb1, 0, -height/4);
    text(sb2, 0, -height/4+50);
    text(sb3, 0, -height/4+100);
    text(sb4, 0, -height/4+150);
    text(sb5, 0, -height/4+200);
    
    text(ent, 0 , -height/4+300);
    
    text(tem, 0 , -height/4+350);
    
    popMatrix();
  }
}