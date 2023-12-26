void  setup()
{
  size(150, 200);

}

void  draw()
{
  float x, d, y, r, diameter, start_angle, end_angle;
  y = 0;
  // Breast
  fill(0);
  rect(10, 60, 80, 80, 0, 0, 50, 50);
  circle(50, 110, 80);
  // Head 
  fill(255, 255, 255);
  circle(50, 60, 80);
  fill(0);
  //rect(10, 20, 80, 40, 75, 75, 0, 0);
  // head
  x = width / 2; 
  y = height / 2; 
  diameter = 80;
  start_angle = radians(0);
  end_angle = radians(180);
  pushMatrix();
  translate(50, 60);
  rotate(radians(180));
  arc(0, 0, diameter, diameter, start_angle, end_angle);
  popMatrix();  
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
        //o       r      u       l
  quad(50, 60, 52, 65, 50, 70, 48, 65);  
}
