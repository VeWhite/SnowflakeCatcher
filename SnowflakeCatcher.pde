Snowflake[] flakes;

void setup()
{
  size(300,300);
  flakes = new Snowflake[300];
  for(int i = 0; i < flakes.length; i++)
  {
    flakes[i] = new Snowflake();
  }
  background(49);
  noStroke();
}
void draw()
{
  
  for(int i = 0; i < flakes.length; i++)
  {
    flakes[i].erase();
    flakes[i].lookDown();
    flakes[i].move();
    flakes[i].wrap();
    flakes[i].show();
   } 
    
  
}
void mouseDragged()
{
  //strokeWeight(10);
  //if(mouseButton == Right)
  //{
    //stroke(0);
  //}
  //else 
  //{
    //stroke(255, 0, 0);
  //}
 // line(mouseX, mouseY, pmouseX, pmouseY);
}

class Snowflake
{
  int x, y;
  boolean isMoving;
  Snowflake()
  {
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300);
    isMoving = true;
  }
  void show()
  {
    fill(255);
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    if(y >= 0 && y <= 300)
    {
      isMoving = false;
    }
    else if(get(x-2, y+5) != color(0) 
      || get(x+2, y+5) != color(0))
    {
      isMoving = false;
    }
    else
    {
      isMoving = true;
    }
  }
  void erase()
  {
    fill(0);
    ellipse(x, y, 7, 7);
  }
  void move()
  {
    if(isMoving == true)
    {
      y++;
    }
  }
  void wrap()
  {
    if(y > 300)
    {
      y = 0;
      x = (int)(Math.random()*300);
    }
  }
}


