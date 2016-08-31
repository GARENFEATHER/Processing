float y=50.0,speed=1.0,radius=15.0;
int direc=1;

void setup(){
  size(400,400);
  smooth();
  ellipseMode(RADIUS);
}

void draw(){//????????????????
  fill(0,12);
  rect(0,0,width,height);
  fill(255);
  ellipse(33,y,radius,radius);
  y+=speed*direc;
  if(y>height-radius || y <radius){
    direc=-direc;
  }
}