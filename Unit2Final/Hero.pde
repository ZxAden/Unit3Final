class Hero
{
  private PImage _playerImage;


  Hero()
  {
    _playerImage=loadImage("skull.png");
    _playerImage.resize(30, 70);
    _position = new PVector(405, 400);
  }
  
  void Draw()
  {
    image(_playerImage, _position.x, _position.y);
    if (_position.x>width) {
      _position.x -= 90;
    }
    if (_position.x<0) {
      _position.x += 90;
    }
    if (_position.y>height) {
      _position.y -= 90;
    }
    if (_position.y<0) {
      _position.y += 90;
    }
  }
}
