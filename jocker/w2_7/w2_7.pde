void  setup()
{
  size(150, 200);

}

void  draw()
{
  int x, d, y, r;
  y = 0;
  // Breast
  fill(0);
  rect(10, 60, 80, 80, 0, 0, 50, 50);
  circle(50, 110, 80);
  // Head 
  fill(255, 255, 255);
  circle(50, 60, 80);
  fill(0);
  rect(10, 20, 80, 40, 75, 75, 0, 0);
  //eyes  
  noStroke();
  fill(255);
  x = 57;
  d = 40;
  r = 40;
  circle(31, x, r);
  circle(70, x, r);
  // pupiks
  stroke(0);
  x = 55;
  r = 7;
  fill(0);
  circle(40, x, r);
  circle(60, x, r);
  // navel

}