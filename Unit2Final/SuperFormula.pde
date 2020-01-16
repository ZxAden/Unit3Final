class SuperFormula
{
  float t = 0.1;
  private float a;
  private float b;
  private float m;
  private float n1;
  int BG3;
  int BG4;
  float backgroundColor2;
  SuperFormula()
  {
    a = 3;
    b = 3;
    m = 6;
    n1 = 2;
    BG3 = color(0, 98, 100);
    BG4 = color(89.8, 0, 69.8);
  }
  void SuperFormula2()
  {
    strokeWeight(1);
    beginShape();
    translate(width/2,height/2);
    for (float theta = 0; theta<=2*PI; theta += 0.001)
    {
      float rad = r(theta, a, b, m, n1, sin(t)*2+0.8, cos(t)*2+0.8);
      float x = rad * cos(theta)*50;
      float y = rad * sin(theta)*50;
      vertex(x, y);
    }
    endShape();
    t+=0.1;
  }
  float r(float theta, float a, float b, float m, float n1, float n2, float n3)
  {
    return pow(pow(abs(cos(m * theta / 4.0) / a), n2) + 
      pow(abs(sin( m *theta / 4.0) / b), n3), - 1 / n1);
  }
  void Key()
  {
    if (key == '1')
    {
      m = 2;
    }
    if (key == '2')
    {
      m = 4;
    }
    if (key == '3')
    {
      m = 8;
    }
    if (key == '4')
    {
      m = 12;
    }
    if (key == '5')
    {
      m = 18;
    }
    if (key == '6')
    {
      m = 6;
    }
  }
}
