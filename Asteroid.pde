class AsteroidClass extends Floater
{
	private int rotateSpeed;
	public AsteroidClass()
	{
		rotateSpeed = (int)(Math.random() * 3) - 1;
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random() * 7) -24;
    yCorners[0] = (int)(Math.random() * 10) - 5;
    xCorners[1] = (int)(Math.random() * 7) - 12;
    yCorners[1] = (int)(Math.random() * 10) + 7;
    xCorners[2] = (int)(Math.random() * 10) + 5;
    yCorners[2] = (int)(Math.random() * 10) + 10;
    xCorners[3] = (int)(Math.random() * 10) + 5;
    yCorners[3] = (int)(Math.random() * 5) -8;
    xCorners[4] = (int)(Math.random() * 5) - 5;
    yCorners[4] = (int)(Math.random() * 8) -15;
    myColor = color((int)(Math.random()*90)+60);
    myCenterX = (Math.random() * 400); 
    myCenterY = (Math.random() * 400);
    myDirectionX = Math.random()+0.1;
    myDirectionY = Math.random()+0.1;
    myPointDirection = (Math.random() * 361);

	}
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }

}
