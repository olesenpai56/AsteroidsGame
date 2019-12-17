
Spaceship ship = new Spaceship(); 
Star[] twinkle = new Star [90];
ArrayList <Asteroid> bigStars = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
public void setup() 
{
  //your code here
  size(600,600);
  for (int i = 0; i < twinkle.length; i++){
    twinkle[i] = new Star();
  }
   for (int i = 0; i < 11; i++){
    bigStars.add(new Asteroid());
  }
}
public void draw() 
{
  //your code here
  background(255, 204, 0);
   for(int i = 0; i < twinkle.length; i++){
    twinkle[i].show();
  }
    for(int i = 0; i < bigStars.size(); i++){
    bigStars.get(i).show();
    bigStars.get(i).move();
  }  
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).move();
    bullets.get(i).show();
    if(bullets.get(i).getX() > 599 || bullets.get(i).getX() < 1 ||  bullets.get(i).getY() > 599 || bullets.get(i).getY() < 1){
        bullets.remove(i);
    }
  }
  for(int i = 0; i < bullets.size(); i++){
  for(int z = 0; z < bigStars.size(); z++){
      float distance2 = dist(bullets.get(i).getX(), bullets.get(i).getY(), bigStars.get(z).getX(), bigStars.get(z).getY());
      if(distance2 < 20){
        bigStars.remove(z);
        bullets.remove(i);
        break;
      }
    }
  }
  ship.show();
  ship.move();
 
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
    else if(key == ' '){ 
    bullets.add(new Bullet(ship));
    }
}
