void setup()
{
  size(450, 320);
}

void draw()
{
  fill(255, 0, 0);
  noStroke();
  rect(10, 10, 100, 300);
  
  fill(0, 255, 0);
  circle(200, height / 2, 100);
  
  stroke(0, 0, 255);
  strokeWeight(10);
  line(310, 10, 310, 300);
  
  noStroke();
  fill(#FFF946);
  triangle(400, 10, 370, 310, 440, 310);
}
