class Tutorial
{
  int squareSize = 90;
  int cols, rows;

  Tutorial()
  {
    cols = 18;
    rows = 10;
    InitializeBoard();
  }
  void Draw()
  {  
    background(0);
    strokeWeight(3);
    stroke(255);
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        int x = i*squareSize; 
        int y = j*squareSize; 
        if ((i+j) % 2 == 0) { 
          fill(0);
        } else { 
          fill(0, 0, 255);
          rect(x, y, squareSize, squareSize);
        }
      }
    }
  }
 public void InitializeBoard()
  {

    for (int i =0; i<18; i++)
    {
      for (int j =0; j<10; j++)
      {
        int rectX = i*squareSize;
        int rectY = j*squareSize;
        if ((i+j)%2==1)
        {
          centerPositions[pos] = new PVector(rectX, rectY);
          //println(centerPositions[pos]);
          println(pos);
          pos++;
        }
      }
    }
  }
}
