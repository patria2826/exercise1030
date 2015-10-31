PImage sun ;
PImage earth ;
PImage moon ;
float mX = 0;
float mY = 0;

void setup (){
  
  size(600,600);
  sun = loadImage("sun.png");
  earth = loadImage("earth.png");
  moon = loadImage("moon.png");
  

}
void draw(){
  background(0);
  imageMode(CENTER);
  image(sun, width/2, height/2);
 
  pushMatrix();
  translate(width/2,height/2);
  float a = atan2(mouseY-height/2,mouseX-width/2);
  rotate(a);

  imageMode(CENTER);
  image(earth, 100, 100);
  
  mX+=0.02;
  mY+=0.02;
  float moonX = 100+cos(mX)*70;
  float moonY = 100+sin(mY)*70;
  imageMode(CENTER);
  image(moon, moonX, moonY);
  
  
  popMatrix();
 
  
}
