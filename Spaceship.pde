class Spaceship extends Floater  
{   
    
    public Spaceship()
    {
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int [corners];
      xCorners[0] = -10;
      yCorners[0] = -10;
      xCorners[1] = 18; 
      yCorners[1] = 0;
      xCorners[2] = -10;
      yCorners[2] = 10;
      xCorners[3] = -2;
      yCorners[3] = 0;
      myColor = color(255, 30, 50);
      myCenterX = 400; 
      myCenterY = 400;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;
    }
    
    public void hyperspace()
    {
       myCenterX = (double)(Math.random() * 600);
       myCenterY = (double)(Math.random() * 600);
       myDirectionX = myDirectionY = 0;
       myPointDirection = (double)(Math.random() * 360);
    }
    
    public void accelerate()
    {
      
      
    }
}
