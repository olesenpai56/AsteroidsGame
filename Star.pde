class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY, mySize;
	public Star(){
		myX = (int)(Math.random() * 600) ;
		myY = (int)(Math.random() * 600) ;
		mySize = (int)(Math.random() * 6) ;
	}
	public void show(){
		fill(255);
		ellipse(myX, myY, mySize, mySize);
	}
}
