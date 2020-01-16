class MonsterManager
{
  int _activeMonsters;
  int _maxMonsters=50;
  PImage _attackFire;
  Monster[] _Monster;
  MonsterManager()
  {
    //yot
  }
  MonsterManager(int max)
  {
    _maxMonsters = max;
    _Monster = new Monster[_maxMonsters];  
    // PVector ranPos = centerPositions[random(centerPositions.
    //centerPositions.length
    for (int i=0; i<_maxMonsters; i++)
    {
      _Monster[i] = new Monster(centerPositions[(int)random(0, 89)]);
    }
    _activeMonsters = 5;
    _attackFire=loadImage("fire.png");
    _attackFire.resize(100, 100);
  }

  void AddNewMonster(int x, int y)
  {
    if (_activeMonsters < _maxMonsters -1)
    {
      _activeMonsters++;
      CreateNewMonster(x, y);
    } else
    {
      print("Max Monsters reached.");
    }
  }

  private void CreateNewMonster(int x, int y)
  {
    _Monster[_activeMonsters+1] = new Monster(new PVector(x, y, 0));
  }

  void DrawMonsters()
  {
    for (int i = 0; i< _activeMonsters; i++)
    {
      float d = dist(_monManager._Monster[i]._position.x, _monManager._Monster[i]._position.y, 
        _position.x, _position.y);
      if (d<95)
      {
        if (key == ' ')
        {
          image(_attackFire, _position.x, _position.y);
          attack=true;
          if (beat.isOnset()) 
          {
            _monManager._Monster[i].isAlive = false;
            score1+=1;
          } else
          {
            Health=Health-2;
          }
        }
      }
          if (_Monster[i].isAlive)
        {
          _Monster[i].Draw();
        }
    }
  }
  void UpdateMonsters()
  {
    for (int i =0; i< _activeMonsters; i++)
    {
      if (_Monster[i].isAlive)
      {
        _Monster[i].Update();
      }
    }
  }
}
