Spaceship falcon = new Spaceship();
Star[] galaxy;
ArrayList <AsteroidClass> asteroids = new ArrayList <AsteroidClass>();
ArrayList <Bullet> lazars = new ArrayList <Bullet>();
boolean accel = false;
int shipHP = 1000;
int score = 0;
public void setup() 
{
  size(600, 600);
  frameRate(2000);
  background(0);
  galaxy = new Star[500];
  for(int i = 0; i < galaxy.length; i++){
     galaxy[i] = new Star();
  }
  for(int i = 0; i < 20; i++){
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
  if(key == ' '){
    Bullet lazar = new Bullet(falcon);
    lazars.add(lazar);
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
  for(int i = 0; i < lazars.size(); i++){
    Bullet temp = lazars.get(i);
    temp.show();
    temp.move();
  }
  falcon.move();
  falcon.show(accel);
  for(int i = 0; i < asteroids.size(); i++){ 
      asteroids.get(i).show();
      asteroids.get(i).move();
      for(int x = 0; x < lazars.size(); x++){
        Bullet temp = lazars.get(x); 
        if(dist((float)temp.getX(), (float)temp.getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY()) < 15){
          asteroids.remove(i);
          lazars.remove(x);
          score += 300;
          i--;
          x--;
        }
      }
  }
  if(get((int)falcon.getX(), (int)falcon.getY()) != color(255, 30, 50)){
     shipHP-= 5;
     score -= 27;
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
  
  
  text("Score: " + score, 450, 25);
  
  if(asteroids.size() == 0){
    noLoop();
    background(0);
    fill(200, 0,0);
    textSize(40);
    text("You win!", 135, 275);
    textSize(30);
    text("High Score: " + score, 135, 325);
    textSize(25);
    text("Refresh to restart", 135, 375);
  }
  
  if(shipHP <= 0){
    noLoop();
    background(0);
    fill(200, 0,0);
    textSize(40);
    text("Game Over :(", 135, 275);
    textSize(30);
    text("High Score: " + score, 135, 325);
    textSize(25);
    text("Refresh to restart", 135, 375);
  }
}

public boolean checkHit(Bullet a){
  if(get((int)a.getX(), (int)a.getY()) != color(0, 200, 200) || get((int)a.getX(), (int)a.getY()) != color(255, 30, 50)){
    return true;
  }
  return false;
  
  
}
