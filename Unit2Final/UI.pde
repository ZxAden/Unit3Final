class UI
{
  int Damage; 
  
  UI()
  {
    Mana=0;
    Health=200;
    Damage=5;
    score1=0;
  }
  
  void Draw()
  {
    fill(255,0,0);
    text("Score: "+score1, width/3,50);
    textSize(50);
    fill(0);
    rect(width-300, 40, 200, 50);
    fill(255, 0, 0);
    rect(width-300, 40, Health, 50);
    text("HP", width-100, 90);
    fill(255, 255, 0);
    text("MANA", width-500, 90);
    fill(0, 0, 255);    
    rect(width-700, 40, 200, 50); 
    fill(255, 255, 0);
    rect(width-700, 40, Mana, 50);
   if(attack&&key==' ')
    {
      score1+=1;
    }
    if (score==100) {
      Mana=50;
    }
    if (score==200) {
      Mana=100;
    }
    if (score==300) {
      Mana=150;
    }
    if (score==400) {
      Mana=200;
    }
    
    if (Mana>200) {
      Mana=200;
    }     
    if (Health<0) {
      Health=0;
    }
    if(ellipseWidth<50&&keyPressed&&attack==false)
    {
      Health=Health-Damage;
    }
    if (Health>210)
    {
      Health=200;
    }
    if (Mana==50) {
      Damage=4;
    }
    if (Mana==100) {
      Damage=3;
    }
    if (Mana==150) {
      Damage=2;
    }
    if (Mana==200) {
      Damage=1;
    }
    if(Health==0)
    {
      score1=0;
    }
  }
}
