class Monster
{
  PVector _position;
  PImage _monsterImage;
  int _health;


  public boolean isAlive = true;

  Monster() 
  {
    _monsterImage=loadImage("monster.png");
    _monsterImage.resize(50, 80);
    _position = new PVector();
  }

  Monster(PVector newPos) 
  {
    _monsterImage=loadImage("monster.png");
    _monsterImage.resize(50, 80);
    _position = new PVector(newPos.x, newPos.y);
    _position.x=_position.x+45;
    _position.y=_position.y-45;
  }

  void Draw()
  {
    image( _monsterImage, _position.x, _position.y);
  }

  void Update()
  {
    Move();
    CheckBoundaries();
  }

  void Move()
  {
    float moveDistanceX=0;
    float moveDistanceY=0;
    float x=10;
    if(beat.isOnset()||keyPressed)
    {
      x=random(100);
    }
    if(beat.isOnset())
    {
      moveDistanceX=random(-x,x);
      moveDistanceY=random(-x,x);
    }
    
    if (beat.isOnset())
    {
      _position.x=_position.x+random(moveDistanceX, moveDistanceY);
      _position.y=_position.y+random(moveDistanceX, moveDistanceY);
    }
    
  }

  void CheckBoundaries()
  {
    if (_position.x>width) {
      _position.x=-95;
    }
    if (_position.x<0) {
      _position.x=+95;
    }
    if (_position.y>height) {
      _position.y=-95;
    }
    if (_position.y<0) {
      _position.y=+95;
    }
  }
}
