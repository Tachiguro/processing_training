void setup()
{
  size(400, 400);
}

void draw()
{
  int z, r, x, y;
  
  background(255);
  //Body
  fill(145);
  quad(50, 370, 100, 120, 240, 120, 300, 370);
  //head
  quad(10, 120, 240, 120, 240, 10, 40, 10);
  //nose
  quad(40, 10, 70, 10, 70, 40, 33, 35);
  
}
