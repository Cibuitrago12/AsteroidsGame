class Bullet extends Floater
{
  private double dRadians;
  
  public Bullet(Spaceship theShip){
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getMyPointDirection();
    dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + theShip.getMyDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + theShip.getMyDirectionY();
    myColor = color(0, 200, 200);
	}
public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    
  }   
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }



}
