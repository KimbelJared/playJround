class environment
{
  float groundX, groundY, groundW, groundH;
  float sun_START;
  float sunX, sunY, sunW, sunH;
  int grass = #155A05;
  int sun = #EAEA2F;
  
  environment()
  {
    groundX = -width/2;
    groundY = height/8;
    groundW = width;
    groundH = height/2;
    
    sun_START = -height/2 + 80;
    
    sunX = width/2 - 80;
    sunY = sun_START;
    sunW = 80; 
    sunH = sunW;
    
    for(int i = 0; i < 4; i++)
    {
      trees.add(new tree());
    }
    for(int i = 0; i < 15; i++)
    {
      grassL.add(new grass());
    }
    
    
  }
  
  void showGround()
  {
    pushStyle();

    fill(grass);
    
    rect(groundX, groundY, groundW, groundH);
    
    popStyle();
  }
  
  void showSun()
  {
    pushStyle();
    
    fill(sun);
    
    ellipseMode(CENTER);
    ellipse(sunX, sunY, sunW, sunH);
    
    popStyle();
  }
  
  void showTrees()
  {
    for (tree currTree : trees)
    {
      currTree.show();
      currTree.update();
    } 
  }
  
  void showGrass()
  {
    for (grass currGra : grassL)
    {
      currGra.show();
      currGra.update();
    }
  }
}