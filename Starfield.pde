class Star {
  float myX, myY, mySize, mySpeed, myAngle;
  Star(){
    myX = 250;
    myY = 250;
    mySize = 5;
    mySpeed = (float)(Math.random()*10)+1;
    myAngle = (float)(Math.random()*2*Math.PI);
  }
  void explode() {
    myX = myX + (float)(Math.cos(myAngle)*mySpeed);
    myY = myY + (float)(Math.sin(myAngle)*mySpeed);
  }
  void show() {
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(myX,myY,mySize,mySize);
  }
}
class OddballStar extends Star {
  OddballStar(){
    myX = 0;
    myY = (int)(Math.random()*500);
    mySize = 5;
    mySpeed = (float)(Math.random()*10)+1;
    myAngle = (float)(Math.random()*2*Math.PI);
  }
  void showN(){
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(myX,myY,mySize+20,mySize+20);
  }
  void explodeN() {
    myX = myX + (int)(Math.random()*10);
    myY = myY + (int)(Math.random()*10);
  }
}
Star [] bob = new Star[1000];
OddballStar gabe = new OddballStar();
void setup(){
  size(500,500);
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Star();
  }
}
void draw(){
  background(0,0,0);
  for(int i = 0; i < bob.length; i++){
    bob[i].explode();
    bob[i].show();
  }
  gabe.explodeN();
  gabe.showN();
}
void mouseClicked(){
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Star();
  }
  gabe = new OddballStar();
}
