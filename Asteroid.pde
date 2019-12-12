class Asteroid extends Floater{
	public int rotSpeed;
	public Asteroid(){
    corners= 40;
    rotSpeed = (int)(Math.random() * 9) - 1;
  
    xCorners=  new int {-2,-1,-1,-2,-2,-1,-1,-2,-4,-2,-1,-1,-2,-2,-3,-4,-3,-2,-2,2,2,3,4,3,2,2,1,1,2,4,2,1,1,2,2,1,1,2,1,-1};
    yCorners=  new int {8,6,5,4,1,1,0,0,3,0,0,-1,-1,-2,-2,-4,-2,-2,-5,-5,-2,-2,-4,-2,-2,-1,-1,0,0,3,0,0,1,1,4,5,6,8,6,6}; 
    
    
  	myDirectionX= Math.random() * -1;
  	myDirectionY= Math.random() * -1;
  	myCenterX= (int)(Math.random()*300);
  	myCenterY= (int)(Math.random()*300);
  	myPointDirection=0; 
  	myColor= 0; 
	}
  
	public void move(){
    turn(rotSpeed);
    super.move();

	}
}
