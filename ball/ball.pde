float vone,vome;
void setup(){
  background(0);
  size(300,300,P3D);
  smooth();
}
void draw(){
  background(0,200);
  translate(width/2,height/2);
  rotateY(map(mouseX,8,width,-PI,PI));
  rotateX(map(mouseY,8,height,-PI,PI));
  for(int i=0;i<12800;i++){
    stroke(0,255,0);
    rotateX(vone);
    rotateZ(0);
    rotateY(vome-float(i)+1.305);
    point(70,70,0);
  }
  vone-=0.02;
  vome+=0.02;
}