void setup()
{
  size(600, 200);
}

void draw()
{
  int x = 100;
  int y = 100;
  for(int i = 1; i <= 5; i++)
  {
    circle(x * i, y, 100);
  }
}
