class Bullet extends Floater{
	Bullet (Spaceship ship){
		myCenterX = ship.getX();
		myCenterY = ship.getY();
		myPointDirection = ship.getPointDirection();
		double dRadians =myPointDirection*(Math.PI/180);
		myDirectionX = ship.getDirectionX() ;
		myDirectionY = ship.getDirectionY() ;
		accelerate(6.0);
	}
	public void show(){
		fill(240,10,10);
		ellipse((float)myCenterX, (float)myCenterY, (float)4, (float)4);
	}
	public void setX(int x){ 
		myCenterX = x;
	}  
    public int getX(){ 
    	return (int)myCenterX;
    };   
    public void setY(int y){
    	myCenterY = y;
    }   
    public int getY(){
    	return (int)myCenterY;
    }   
    public void setDirectionX(double x){
        myDirectionX = x;
 }   
    public double getDirectionX(){
    	return myDirectionX;
    }   
    public void setDirectionY(double y){
     myDirectionY = y;
 }   
    public double getDirectionY(){
    	return myDirectionY;
    }   
    public void setPointDirection(int degrees){
    	myPointDirection = degrees;
    }   
    public double getPointDirection(){
    	return (double)myPointDirection;
    }
}
