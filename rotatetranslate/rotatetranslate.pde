int t1=2000,t2=4000,timer=0;
float x=0,offsetX=width/2,offsetY=height/2,scale=40,angle=0,speed=0.05;

void setup(){
  size(640,480);
  smooth();
}

void draw(){
  background(204);
  if(timer<3000) translate(mouseX,mouseY);
  rotate(angle);//rotate->translate is different with translate->rotate
  line(0,0,20,0);
  for(int x=20;x<width;x+=20){
    float mx=mouseX/10;
    float ofA=random(-mx,mx),ofB=random(-mx,mx);
    line(x+ofA,20,x-ofB,100);
  }
  timer=millis();
  println(timer,frameRate);
  if(timer>t2) {
    x-=0.5;
  }
  else if(timer>t1) {
    x+=2;
  }
  ellipse(x,60,90,90);
  float a=offsetX+cos(angle)*scale;
  float b=offsetY+sin(angle)*scale;
  angle+=speed;
  noFill();
  ellipse(a,b,8,8);
  line(a,b,offsetX,offsetY);
}