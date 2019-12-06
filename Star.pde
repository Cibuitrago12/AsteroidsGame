class Star //note that this class does NOT extend Floater
{
  private float myX, myY;
  private float size;
  
  public Star()
  {
    size = (float)(Math.random() * 4);
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
