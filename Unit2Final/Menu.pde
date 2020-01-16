class Menu
{
  PImage back, arrow, smallarrow;
  Menu()
  {
    imageMode(CENTER);
    back=loadImage("Play.png");
    back.resize(300, 300);
    arrow=loadImage("Arrow.png");
    arrow.resize(300, 300);
    smallarrow=loadImage("Arrow.png");
    smallarrow.resize(100, 100);
  }
  void Draw()
  {
    background(0);
    image(back, 400, 400);
    fill(255);
    ellipse(750, 400, 350, 350);
    image(arrow, 750, 400);
    fill(255);
    textSize(60);
    text("Beat Based Dungeon Master", 200, 200);
    text("E for Animations", 250, 700);
    text("Q for Main Menu", 250, 640);
  }
  void Info()
  {
    fill(0, 0, 255);
    rect(100, 400, 1250, 300);
    fill(255);
    text("Move With 'WASD', and Only when there is a beat", 125, 500);
    text("Aim with your Mouse, Use MANA for Arrows", 150, 570);
    text("Press SpaceBar to Melee Attack", 150, 640);
    image(smallarrow, 1150, 625);
    if (abs(mouseX-1150)<50&&abs(mouseY-650)<50&&mousePressed) {
      info=false;
    }
  }
}
