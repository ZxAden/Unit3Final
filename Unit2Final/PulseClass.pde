class Things
{
  float n;
  float d;
  float s;
  float n2;
  float d2;
  float s2;
  float count;
  float count2;
  Things()
  {
    n = random(1, 10);
    d = random(1, 75);
    s = random(150, 400);
    n2 = random(1, 10);
    d2 = random(1, 75);
    s2 = random(150, 450);
  }
  void Rose()
  {
    count = (round((frameCount % 5)))+1;
    count2 = (round((frameCount % 7)))+1; 
    pushMatrix();
    beginShape();
    if (count == 1) {
      n = random(1, 10);
      d = random(1, 75);
      s = random(150, 400);
    }
    stroke(map(n, 0, 10, 100, 255), 100, map(d, 1, 75, 255, 100), map(count, 1, 120, 255, 0));
    for (float i=0; i<TWO_PI; i+=(TWO_PI/360)) 
    {
      float k = i*d;
      float r = s*sin(n*k);
      float x = r * cos(k);
      float y = r * sin(k);
      vertex(x, y);
      n += 0.00000005;
    }
    endShape();    
    beginShape();
    if (count2 == 1) {
      n2 = random(1, 10);
      d2 = random(1, 75);
      s2 = random(150, 450);
    }
    stroke(map(n2, 0, 10, 100, 255), 100, map(d2, 1, 75, 255, 100), map(count, 1, 200, 255, 0));
    for (float i=0; i<TWO_PI; i+=(TWO_PI/360)) {
      float k = i*d2;
      float r = s2*sin(n2*k);
      float x = r * cos(k);
      float y = r * sin(k);
      vertex(x, y);
      n2 += 0.00000005;
    }
    endShape();  
    popMatrix();
  }

  void Update()
  {
    Rose();
  }
}
