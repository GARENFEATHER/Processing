float x,y,px,py;
float easing=0.01;
float dia=12;
void setup(){
  //size(220,120);
  //smooth();
  
  size(480,480);
  smooth();
  stroke(0,102);
}

void draw(){
  //float targetX=mouseX;
  //x+=(targetX-x)*easing;
  //ellipse(x,40,12,12);
  
  float targetX=mouseX;
  x+=(targetX-x)*easing;
  float targetY=mouseY;
  y+=(targetY-y)*easing;
  float weight=dist(x,y,px,py);
  strokeWeight(weight);
  line(x,y,px,py);
  py=y;
  px=x;
}