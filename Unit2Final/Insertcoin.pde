class InsertCoin
{
  float xText, yText, zTextSize, hText, jText;
  PImage arrow;

  InsertCoin()
  {
    xText=300;
    yText=500;
    zTextSize=150;
    hText=550;
    jText=600;
    arrow=loadImage("Arrow.png");
    arrow.resize(300, 300);
  }
  void Draw()
  {
    fill(0, 0, 200);
    textSize(zTextSize);
    text("Insert Coin", xText, yText);
    textSize(50);
    text("Or Press Space", hText, jText);
  }
  void RestartScreen()
  {
    fill(255);
    textSize(zTextSize);
    text("Game Over", xText, yText);
    textSize(50);
    text("Click To Continue", hText, jText);
    fill(255);
    ellipse(width/2, 200, 350, 350);
    image(arrow, width/2, 200);
    if (abs(mouseX-width/2)<175&&abs(mouseY-200)<175&&mousePressed) {
      gameOver=false;
      menu=true;
    }
  }
}
