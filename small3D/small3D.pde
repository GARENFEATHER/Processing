void setup(){
  size(640,480,P3D);
  smooth();
}
void draw(){
  int i=200,j=160;
  background(120);
  lights();
  translate(mouseX,mouseY,-400);
  rotateY(mouseX/50);
  fill(0,6);
  beginShape();
  vertex(i,i,i);
  vertex(-i,j,j);
  vertex(-i,j,-i);
  vertex(-j,-j,-j);
  vertex(-j,-i,i);
  vertex(i,-i,i);
  vertex(j,-j,-i);
  vertex(i,i,-i);
  endShape();
  beginShape();
  vertex(15,40,50);
  bezierVertex(5,0,80,0,50,55);
  vertex(40,45,-10);
  vertex(25,75,40);
  bezierVertex(50,70,75,90,80,70);
  endShape();
}