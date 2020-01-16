import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer song, song2;
Things _Art;
SuperFormula _Art2;
BeatDetect beat;
Menu _menuScreen;
Tutorial _tutorial;
Hero _hero;
UI _userInterface;
WaveformRenderer waveform;
InsertCoin _StartScreen;
Boosts _Boosts;
MonsterManager _monManager;
int score1;
PVector _position;
boolean listening = true, Level1=false, gameOver=false, attack=false;
boolean start=false, lever=false, Rose=false, menu=false, info=false, Level2=false;
int score=0, beatsensitivity = 10, numOfMonsters=10, activeMonsters;
float ellipseWidth=0, ellipseHeight=0, xPos, yPos, Health, Mana, boost=0;
PVector centerPositions[];
int pos = 0;
void setup() 
{
  fullScreen();
  _Art= new Things();
  centerPositions = new PVector[180];
  _Boosts= new Boosts();
  _hero=new Hero();
  _Art2 = new SuperFormula();
  _tutorial= new Tutorial();
  waveform= new  WaveformRenderer();
  _StartScreen= new InsertCoin();
  _menuScreen= new Menu();
  _userInterface=new UI();
  minim = new Minim(this);
  song = minim.loadFile("Music.mp3", 2048);
  song.play();
  song.loop();
  beat = new BeatDetect();
  waveform = new WaveformRenderer();
  beat.setSensitivity(beatsensitivity);
  strokeWeight(1);  
  noFill();
  _monManager = new MonsterManager(1000);
  _monManager.AddNewMonster(0, 0);
}
void draw()
{  
  if (!start)
  {
    background(0);
    fill(0);
    waveform.draw();
    song.addListener( waveform );
    _StartScreen.Draw();
  }
  if (menu)
  {
    _menuScreen.Draw();
  }
  if (Rose)
  {
    _Art2.SuperFormula2();
    beat.detect(song.mix);
    if ( beat.isOnset() ) 
    {
      background(0);
      fill(0);
      _Art.Update();
    }
  }
  if (Level1)
  {
    _tutorial.Draw();
    beat.detect(song.mix);
    if ( beat.isOnset() ) 
    {
      score=score+1;
      ellipseWidth=+200;
      ellipseHeight=+200;
    }
    fill(0, 255, 0);
    ellipse(135, 135, ellipseWidth, ellipseHeight);
    ellipseWidth=ellipseWidth-8;
    ellipseHeight=ellipseHeight-8;
    if (ellipseWidth<10) {
      ellipseWidth=10;
    }
    if (ellipseHeight<10) {
      ellipseHeight=10;
    }
    if (ellipseWidth>205) {
      ellipseWidth=200;
    }
    if (ellipseHeight>205) {
      ellipseHeight=200;
    }
    _hero.Draw();
    _monManager.UpdateMonsters();
    _monManager.DrawMonsters();
    _userInterface.Draw();
    _Boosts.Draw();
    if (info==true) {
      _menuScreen.Info();
    }
  }
  if (Health==0)
  {
    _StartScreen.RestartScreen();
    gameOver=true;
  }
  if (gameOver)
  {
    background(0);
    Level1=false;
    Health=200;
    Mana=0;
    xPos=405;
    yPos=400;
    score=0;
    _StartScreen.RestartScreen();
  }
}


void keyPressed()
{
  _Art2.Key();
  if (!Level1)
  {

    if (key==' ') 
    {
      start=true;
      menu=true;
    }
    if (key=='e')
    {
      background(0);
      Rose=true;
      menu=false;
    }
  }
  if (key=='q')
  {
    background(0);
    menu=true;
    Rose=false;
    Level1=false;
  }
  if (Level1 || Level2)
  {
    if (key=='w')
    {
      _position.y -= 90;
    } else if (key=='d')
    {
      _position.x += 90;
    } else if (key=='s')
    {                                  
      _position.y += 90;
    } else if (key=='a')
    {
      _position.x -= 90;
    }
    Health= Health - 5;
  }
  
}
void keyReleased()
{
  if (key==' ')
  {
    attack=false;
  }
}
void mousePressed()
{
  if (menu==true)
  {
    background(0);
    Level1=true;
    menu=false;
    info=true;
  }
}
