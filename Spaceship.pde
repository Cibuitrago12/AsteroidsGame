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
    
    public void show(boolean accel)
    {
       fill(myColor);   
       stroke(myColor);    
       strokeWeight(1); 
       //translate the (x,y) center of the ship to the correct position
       translate((float)myCenterX, (float)myCenterY);
    
       //convert degrees to radians for rotate()     
       float dRadians = (float)(myPointDirection*(Math.PI/180));
        
       //rotate so that the polygon will be drawn in the correct direction
       rotate(dRadians);
        
       //draw the polygon
       beginShape();
       for (int nI = 0; nI < corners; nI++)
       {
         vertex(xCorners[nI], yCorners[nI]);
       }
       endShape(CLOSE);
        
       if(accel){
         stroke(205);
         strokeWeight(2);
         line(-14, -6, -24, -12); 
         line(-14, 0, -24, 0);
         line(-14, 6, -24, 12); 
       }

   
       //"unrotate" and "untranslate" in reverse order
       rotate(-1*dRadians);
       translate(-1*(float)myCenterX, -1*(float)myCenterY);
    }
}
