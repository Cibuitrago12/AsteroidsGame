Spaceship falcon = new Spaceship();
Star[] galaxy;
ArrayList <AsteroidClass> asteroids = new ArrayList <AsteroidClass>();
boolean accel = false;
int shipHP = 1000;
public void setup() 
{
  size(600, 600);
  frameRate(2000);
  background(0);
  galaxy = new Star[500];
  for(int i = 0; i < galaxy.length; i++){
     galaxy[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
      asteroids.add(new AsteroidClass());
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
  for(int i = 0; i < asteroids.size(); i++){
      asteroids.get(i).show();
      asteroids.get(i).move();
  }
  if(get((int)falcon.getX(), (int)falcon.getY()) != color(255, 30, 50)){
    shipHP-= 5;
  }
  
  
  
  noFill();
  stroke(200);
  rect(30, 40, 150, 30);
  fill(0);
  rect(30, 40, 150, 30);
  fill(0, 200, 0);
  rect(30, 40, shipHP / 6.666666, 30);
  fill(200, 0,0);
  textSize(20);
  text("Ship HP: " + shipHP, 25, 25);
  
  
  
  if(shipHP <= 0){
    noLoop();
    background(0);
    fill(200, 0,0);
    textSize(40);
    text("Game Over :(", 135, 300);
    textSize(25);
    text("Refresh to restart", 135, 350);
  }
}
