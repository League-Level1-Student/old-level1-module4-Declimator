int x = 200;
int y = 300;
  Car c = new Car(150, 230, 100, 10);
  Car c2 = new Car(150, 180, 100, 10);
    Car c3 = new Car(150, 130, 100, 10);
      Car c4 = new Car(150, 80, 100, 10);
void setup(){
  size(400, 400);
}
void draw(){

  if(intersects(c)==true || intersects(c2)==true || intersects(c3)==true || intersects(c4)==true){
    x=200;
    y=300;
  }
  background(50, 255, 255);
    c.display();
    c.moveleft();
    c2.display();
    c2.moveRight();
    c3.display();
    c3.moveleft();
    c4.display();
    c4.moveRight();
  fill(0, 150, 35);
  ellipse(x, y, 50, 50);
  if(x>350){
  x=350;
  }
  else if(x<50){
    x=50;
  }
  else if(y>350){
    y=350;
  }
  else if(y<50){
    y=50;
  }
}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
              y=y-50;
            }
            else if(keyCode == DOWN)
            {
              y=y+50;
            }
            else if(keyCode == RIGHT)
            {
              x=x+50;
            }
            else if(keyCode == LEFT)
            {
              x=x-50;
            }
      }
}
class Car{
int carx;
int cary;
int size;
int speed;
Car(int carx, int cary, int size, int speed){
  this.carx = carx;
  this.cary = cary;
  this.size = size;
  this.speed = speed;
}
void display() 
{
      fill(0,255,0);
      rect(carx , cary, size, 40);
}
void moveleft(){
  carx=carx-speed;
  if(carx<0-size){
    carx=width;
  }
}
void moveRight(){
  carx=carx+speed;
  if(carx>400+size){
    carx=0-size;
  }
}
 int getX(){
  return carx;
}
 int getY(){
  return cary;
}
 int getSize(){
  return size;
}
}
boolean intersects(Car car) {
      if ((y > car.getY() && y < car.getY()+50) && (x > car.getX() && x < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}