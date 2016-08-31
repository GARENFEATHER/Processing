float x=20.0,y=10.0;
float tx=370.0,ty=380.0,easing=0.02;

void setup(){
  size(400,400);
  noStroke();
  smooth();
}

void draw(){
  fill(0,12);
  rect(0,0,width,height);
  float d=dist(x,y,tx,ty);
  if(d > 1.0){
    x+=(tx-x)*easing;
    y+=(ty-y)*easing;
  }
  fill(255);
  ellipse(x,y,20,20);
}