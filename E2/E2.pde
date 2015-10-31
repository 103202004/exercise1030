
PImage sun ;
PImage earth ;
PImage moon ;
float angle=0;
float phi=0;


void setup (){
  
  size(600,600);
  sun = loadImage("img/sun.png");
  earth = loadImage("img/earth.png");
  moon = loadImage("img/moon.png");

}
void draw(){
  background(0);
  pushMatrix();
  translate(width/2,height/2);
  float x = 200;
  float y = 200;
  
  if(mouseX < width/2){
    float a = atan2(mouseY-height/2,mouseX-width/2);
    rotate(a);
    y = -PI;
  }
  if(mouseX > width/2){
    float a = atan2(mouseY-height/2,mouseX-width/2);
    rotate(a);
    y = PI;
  }
  angle += 0.66;
  float mx = x+cos(angle+phi)*50;
  float my = y+sin(angle+phi)*50;
  imageMode(CENTER);
  image(sun,0,0);
  image(earth,x,y);
  image(moon,mx,my);

  popMatrix();
  
  angle = 0;
  phi += 0.105;

 
}
