void  setup()
{
  size(400, 220);

}

void  draw()
{
    int z, r, x, y;
    // Background colour
    background(255);
    // Case
    fill(189);
    strokeWeight(3);
    rect(50, 50, 280, 150, 25, 25, 25, 25);
    strokeWeight(0.5);
    // Handle
    fill(0);
    rect(80, 10, 220, 40, 25, 25, 0, 0);
    fill(255);
    rect(90, 25, 200, 25);
    // Loudspeaker
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
    // Control elements
    fill(20);
    r = 5;
    rect(60, 65, 260, 25, r, r, r, r);
    fill(189);
    rect(135, 74, 160, 7);
    // Display text
    fill(40);
    // display & text
    rect(75, 68, 45, 20);
    fill(189);
    text("92.7 FM", 80, 82);
    fill(0);
    rect(80, 100, 220, 2);
}
