Spaceship falcon = new Spaceship();
Star[] galaxy;
public void setup() 
{
  size(600, 600);
  background(0);
  galaxy = new Star[500];
  for(int i = 0; i < galaxy.length; i++){
     galaxy[i] = new Star();
  }
}
public void draw() 
{
  for(int i = 0; i < galaxy.length; i++){
     galaxy[i].show(); 
  }
  falcon.show();
}
