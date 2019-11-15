Spaceship falcon = new Spaceship();
Star[] galaxy;
boolean accel = false;
public void setup() 
{
  size(600, 600);
  frameRate(2000);
  background(0);
  galaxy = new Star[500];
  for(int i = 0; i < galaxy.length; i++){
     galaxy[i] = new Star();
  }
}

public void keyPressed()
{
  if(key == 'h'){
     falcon.hyperspace();
     background(0);
  }
  if(key == 'w'){
     falcon.accelerate(0.2);
     accel = true;
     
  }
  if(key == 'a'){
     falcon.turn(-10); 
  }
  if(key == 'd'){
    falcon.turn(10);
  }
  
  
}
public void draw() 
{
  background(0);
  if(keyPressed == false){
    accel = false;
  }
  for(int i = 0; i < galaxy.length; i++){
     galaxy[i].show(); 
  }
  falcon.move();
  falcon.show(accel);
  
}
