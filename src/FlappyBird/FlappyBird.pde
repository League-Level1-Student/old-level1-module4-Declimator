
int x=150;
int y=250;
int velocity=0;
int gravity=1;
int pipex=1000;
int upperY=0;
int lowerY;
int pipeGap=200;
int upperPipeHeight = (int) random(100, 400);
boolean gameover=false;
int score=0;
void setup(){
  size(750, 500);


}

void draw(){

  if(y>490){
    gameover=true;
  }
  if (y < upperPipeHeight && x > pipex && x < (pipex+100)){
gameover=true;
}
     else if (y>lowerY && x > pipex && x < (pipex+100)) {
gameover=true;
}
if(gameover==false){

  lowerY = upperY + upperPipeHeight + pipeGap;
  background(17, 221, 255);
stroke(0, 0, 0);
  fill(0, 204, 0);
  pipex=pipex-5;
  rect(pipex, upperY, 100, upperPipeHeight);
    fill(0, 204, 0);
  rect(pipex, lowerY, 100, 500);
velocity=velocity+gravity;
y=y+velocity;
  fill(255, 221, 85);
ellipse(x, y, 50, 50);
fill(50, 221, 34);
rect(x-250, 495, 1000, 10);
textSize(30);
fill(255, 255, 255);
  text(score, 50, 50);
  if(pipex==-100){
    teleportPipes();
  }
}
else if(gameover==true){
  end();
}
if(pipex==150){
  score++;
}
}
void mousePressed(){
  velocity=-15;
}
void teleportPipes(){

  pipex=800;
  upperPipeHeight = (int) random(10, 385);
}
void end(){
  textSize(100);
  fill(255, 255, 255);
  text("Game Over", 100, 250);
    textSize(25);
  fill(255, 255, 255);
  text("Press R to Restart", 250, 300);
      textSize(25);
  fill(255, 255, 255);
  text("Or Press E to Exit", 250, 325);

  }
void keyPressed() {
  if(int(key)==114){
restart();
  }
  else if(int(key)==101){
    exit();
  }
}
void restart(){
  gameover=false;
  score=0;
  x=150;
  y=250;
  teleportPipes();
}