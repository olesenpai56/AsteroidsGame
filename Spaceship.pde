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
}
