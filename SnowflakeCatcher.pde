void setup()
{
  //your code here
}
void draw()
{
  //your code here
}
void mouseDragged()
{
  //your code here
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
    //your code here
  }
  void lookDown()
  {
    if(y >= 0 && y <= 300)
    {
      isMoving == false;
    }
    else if(get(x,y) != color(0))
    {
      isMoving == false;
    }
    else()
    {
      isMoving == true;
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
      y = y++;
    }
  }
  void wrap()
  {
    //your code here
  }
}


