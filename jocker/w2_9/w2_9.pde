void setup()
{
  size(400, 400);
}

void draw()
{
  int xo, xu, yo, yu;
  
  background(255);
  //tail
  fill(0);
  triangle(250, 330, 395, 320, 395, 340);
  //Body
  fill(145);
  quad(50, 370, 100, 120, 240, 120, 300, 370);
  //head
  quad(10, 140, 240, 140, 240, 10, 40, 10);
  //nose
  fill(0);
  quad(40, 10, 80, 10, 80, 40, 34, 35);
  //Ear 
  triangle(240, 10, 240, 300, 360, 300);
  //mouth
  //quad(40, 100, 90, 100, 90, 65, 40, 65);
  rect(50, 65, 60, 30, 5);
  //eyes
  quad(240, 55, 240, 65, 200, 65, 200, 55); 
  fill(145);
  //left paw
  quad(95, 355, 160, 350, 162, 390, 90, 390);
  //right paw
  quad(195, 355, 265, 350, 275, 390, 190, 390);
  fill(0);
  xo = 255;
  xu = 255;
  yo = 385;
  yu = 395;
  quad(xu, yu, xo, yo, xo + 3, yo, xu + 3, yu );
  xo -= 45;
  xu -= 45;
  quad(xu, yu, xo, yo - 3, xo + 3, yo - 3, xu + 3, yu );
  xo -= 60;
  xu -= 60;
  quad(xu, yu, xo, yo - 2, xo + 3, yo - 1, xu + 3, yu );
  xo -= 45;
  xu -= 45;
  quad(xu, yu, xo, yo - 1, xo + 3, yo - 1, xu + 3, yu );
}
