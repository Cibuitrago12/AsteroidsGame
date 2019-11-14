class Star //note that this class does NOT extend Floater
{
  private int myColor;
  private float myX, myY;
  private float size;
  
  public Star()
  {
    size = (float)(Math.random() * 4);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX =(float)(Math.random()*height); 
    myY =(float)(Math.random()*width); 
  }
  
  public void show()
  {
    fill(255);
    noStroke();
    ellipse(myX, myY, size, size);
  }
}
