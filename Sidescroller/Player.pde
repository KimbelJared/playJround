PVector gravity = new PVector(0, 0.5);

class player 
{
  PVector pos;
  PVector vel;
  PVector acc;
  float size = 30;

  player() 
  {
    pos = new PVector(50, height/2);
    vel = new PVector(0, 0);
    acc = new PVector();
  }

  void applyForce(PVector force) 
  {
    acc.add(force);
  }


  void update() 
  {
    applyForce(gravity);
    pos.add(vel);
    vel.add(acc);
    vel.limit(4);
    acc.mult(0);

    if (pos.y > height) 
    {
      pos.y = height;
    }
  }

  void show() 
  {
    stroke(255);
    fill(255);
    rectMode(CENTER);
    rect(pos.x, pos.y, size, size);
    //triangle(pos.x pos.y
  }
}