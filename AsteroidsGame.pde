//your variable declarations here
Spaceship ship = new Spaceship(); 
Star[] twinkle = new Star [90];
public void setup() 
{
  //your code here
  size(600,600);
  for (int i = 0; i < twinkle.length; i++){
    twinkle[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(255, 204, 0);
  ship.show();
  ship.move();
   for(int i = 0; i < twinkle.length; i++){
    twinkle[i].show();
  }
}
public void keyPressed(){
	if (key == 'h'){
	 ship.setmyDirectionX(0);
	 ship.setmyDirectionY(0); 
	 ship.setmyX((int)(Math.random() * 500));
     ship.setmyY((int)(Math.random() * 500) );
     ship.setmyPoint((int)(Math.random() * 360));
	}else if (key == 'd') { 
		ship.turn(5);
    } else if (key == 'a'){ 
    	ship.turn(-5); 
    } else if (key == 'w'){ 
  	    ship.accelerate(.10); 
    } else if (key == 's'){ 
    	ship.accelerate(-.10);
    }
    //else if(key == ' '){ 
    //bullets.add(new Bullet(ship));
    //}
}
