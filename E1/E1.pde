PImage arrow ; 


void setup (){
  arrow =  loadImage("arrow.png") ;
  size(600 , 600) ;
 
}

void draw(){

  background(255);
  for(int i = 30; i <= width; i+=60) {
    for(int j = 30; j <= height; j+=60) {
    
    pushMatrix();
    translate(i, j);
    float a = atan2(mouseY-j, mouseX-i);
    rotate(a);
   
   imageMode(CENTER);
   image(arrow, 0, 0);
    
    popMatrix();
    
    }
  
  }
  
}
