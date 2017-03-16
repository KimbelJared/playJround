int value;
void setup()
{
  size(800, 600);
  noStroke();
}


void draw()
{
  background(51);
  fill(value);
  rect(25, 25, 50, 50);
  
  rotateY(0.5);
  noFill();
  box(40, 20, 50);
}

void keyPressed() 
{
  if (value == 0) 
  {
    value = 255;
  } 
  else 
  {
    value = 0;
  }
}