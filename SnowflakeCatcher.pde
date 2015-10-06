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
 
  strokeWeight(10);
  if(mouseButton == RIGHT)
  {
    stroke(0);
  }
  else 
  {
    stroke(255, 255, 255);
  }
  line(mouseX, mouseY, pmouseX, pmouseY); 

strokeWeight(1);
stroke(49);



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
    if(x >= 0 && x < 299 && y >= 0 && y < 299 && get(x - 2, y + 5) != color(49) || get(x + 2, y + 5) != color(49))
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
    fill(49);
    ellipse(x, y, 8, 8);
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


