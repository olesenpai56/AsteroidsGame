class Spaceship extends Floater  
{   

  public Spaceship(){
  	corners = 4;
  	xCorners = new int[corners];
  	yCorners = new int[corners];
  	xCorners[0] = -8;
  	yCorners[0] = -8;
  	xCorners[1] = 16;
  	yCorners[1] = 0;
  	xCorners[2] = -8;
  	yCorners[2] =8;
  	xCorners[3] = -2;
  	yCorners[3] = 0;
  	myDirectionX=0;
  	myDirectionY=0;
  	myCenterX= 300;
  	myCenterY= 300;
  	myPointDirection=0; 
  	myColor= 0; 
    
   }
  public void setmyDirectionX(int num){
     myDirectionX=num; 
  }
  public void setmyDirectionY(int bum){
    myDirectionY = bum;
  }
  public void setmyX(int c){
    myCenterX= c;
  }
  public void setmyY(int p){
    myCenterY =p;
  }
  public void setmyPoint(int f){
    myPointDirection = f;
  } 

  public int getX(){
   return (int)myCenterX;
  }   
   
  public int getY(){
    return (int)myCenterY;
  }   
   
  public double getDirectionX(){
    return myDirectionX;
  }   
   
  public double getDirectionY(){
    return myDirectionY;
  }   
   
  public double getPointDirection(){
    return (double)myPointDirection;
  }


}
