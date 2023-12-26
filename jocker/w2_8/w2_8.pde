void  setup()
{
  size(400, 220);

}

void  draw()
{
    int z, r, x, y;
    // Hintergrundfarbe
    background(255);

    // Gehäuse
    fill(189);
    strokeWeight(3);
    rect(50, 50, 280, 150, 25, 25, 25, 25);
    strokeWeight(0.5);
    // Henkel
    fill(0);
    rect(80, 10, 220, 40, 25, 25, 0, 0);
    fill(255);
    rect(90, 25, 200, 25);
    
    // Lautsprecher
    fill(0);
    strokeWeight(1);
    y = 110;
    rect(80, y, 75, 75, 50, 50, 50, 50);
    rect(230, y, 75, 75, 50, 50, 50, 50);
    fill(50);
    fill(40);
    y = 115;
    z = 65;
    r = 50;
    rect(85, y, z, z, r, r, r, r);
    rect(235, y, z, z, r, r, r, r);


    // Display
    //fill(0);
    //rect(150, 75, 150, 50);

    // Bedienelemente
    fill(20);
    r = 5;
    rect(60, 65, 260, 25, r, r, r, r);
    fill(189);
    rect(135, 74, 160, 7);
    // Display
    fill(40);
    rect(75, 68, 40, 20);
    fill(189);
    // Displayinhalt
    text("Berlin", 82, 82);
}