class Asteroid extends Floater{
  public int rotSpeed;
  public Asteroid(){
    corners= 40;
    rotSpeed = (int)(Math.random() * 9) - 1;

    xCorners=  new int[] {-2*2,-1*2,-1*2,-2*2,-2*2,-1*2,-1*2,-2*2,-4*2,-2*2,-1*2,-1*2,-2*2,-2*2,-3*2,-4*2,-3*2,-2*2,-2*2,2*2,2*2,3*2,4*2,3*2,2*2,2*2,1*2,1*2,2*2,4*2,2*2,1*2,1*2,2*2,2*2,1*2,1*2,2*2,1*2,-1*2};
    yCorners=  new int[] {8*2,6*2,5*2,4*2,1*2,1*2,0,0,3*2,0,0,-1*2,-1*2,-2*2,-2*2,-4*2,-2*2,-2*2,-5*2,-5*2,-2*2,-2*2,-4*2,-2*2,-2*2,-1*2,-1*2,0,0,3*2,0,0,1*2,1*2,4*2,5*2,6*2,8*2,6*2,6*2}; 
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
    public void setX(int x){ myCenterX = x;}  
    public int getX(){ return (int)myCenterX;};   
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    public void setDirectionX(double x){ myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;}   
    public void setDirectionY(double y){ myDirectionY = y;}   
    public double getDirectionY(){return myDirectionY;}   
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return (double)myPointDirection;}
}
