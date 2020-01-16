class Boosts
{
  int x [] = new int [numOfMonsters];
  int y [] = new int [numOfMonsters];
  float v1, v2,v3,v4;
  PImage heart;
  Boosts()
  {
    v1=random(16);
    v2=random(9);
    heart=loadImage("FirstAid.png");
    heart.resize(50, 50);
    x[0]=round(v1)*90+45;
    y[0]=round(v2)*90+45;
  }
  void Draw()
  {
    v1=random(16);
    v2=random(9);
    for (int i=0; i<numOfMonsters; i++) {
      image(heart, x[0], y[0]);
      if (x[0]>width) {
        x[0]=405;
      }
      if (x[0]<0) {
        x[0]=405;
      }
      if (y[0]>height) {
        x[0]=400;
      }
      if (y[0]<0) {
        y[0]=400;
      }
      if (abs(x[0]-_position.x)<25&&abs(y[0]-_position.y)<25) 
      {
        x[0]=round(v1)*90+45;
        y[0]=round(v2)*90+45;
        Health=Health+50;
      }
    }
    
  }
}
