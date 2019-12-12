class Asteroid extends Floater{
	public int rotSpeed;
	public Asteroid(){

    rotSpeed = (int)(Math.random() * 9) - 1;
    /*bircles = 5;
  	xCircles = new int[bircles];
  	yCircles = new int[bircles];
    for(int i=0; i<corners; i++){
    xCorners[i]=  {0, 8, 13, 15, 14, 10, 0, -6, -8, -10, -11, -13, -12, -8};
    yCorners[i]= (int)(Math.random()*40); 
    }*/
    
  	myDirectionX= Math.random() * -1;
  	myDirectionY= Math.random() * -1;
  	myCenterX= (int)(Math.random()*300);
  	myCenterY= (int)(Math.random()*300);
  	myPointDirection=0; 
  	myColor= 0; 
	}
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,(float)25,(float)25);
    ellipse((float)myCenterX+25,(float)myCenterY,(float)30,(float)30);
    ellipse((float)myCenterX-25,(float)myCenterY,(float)30,(float)30);
    line((float)myCenterX,(float)myCenterY-10,(float)myCenterX+5,(float)myCenterY-25);
    line((float)myCenterX+5,(float)myCenterY-25,(float)myCenterX-25,(float)myCenterY-30);

    line((float)myCenterX+5,(float)myCenterY-5,(float)myCenterX+20,(float)myCenterY-30);
    line((float)myCenterX+20,(float)myCenterY-30,(float)myCenterX+30,(float)myCenterY-30);

    line((float)myCenterX+5,(float)myCenterY+5,(float)myCenterX+20,(float)myCenterY+30);
    line((float)myCenterX+20,(float)myCenterY+30,(float)myCenterX+30,(float)myCenterY+30);

    line((float)myCenterX,(float)myCenterY+10,(float)myCenterX+5,(float)myCenterY+25);
    line((float)myCenterX+5,(float)myCenterY+25,(float)myCenterX-25,(float)myCenterY+30);

    line((float)myCenterX-25,(float)myCenterY+15,(float)myCenterX-35,(float)myCenterY+25);
    line((float)myCenterX-35,(float)myCenterY+25,(float)myCenterX-55,(float)myCenterY+25);

    line((float)myCenterX-25,(float)myCenterY-15,(float)myCenterX-35,(float)myCenterY-25);
    line((float)myCenterX-35,(float)myCenterY-25,(float)myCenterX-55,(float)myCenterY-25);

    line((float)myCenterX+30,(float)myCenterY-5,(float)myCenterX+50,(float)myCenterY-20);
    line((float)myCenterX+30,(float)myCenterY,(float)myCenterX+50,(float)myCenterY+15);
  }
	public void move(){
    turn(rotSpeed);
    super.move();

	}
}
