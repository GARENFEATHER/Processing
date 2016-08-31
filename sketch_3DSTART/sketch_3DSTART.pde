import processing.opengl.*;
void setup(){
  size(480,480,OPENGL);
  noStroke();
  fill(255,190);
}

void draw(){
  lights();
  background(0);
  
  //translate(width/2,height/2);
  //rotateX(mouseX/200.0);
  //rotateY(mouseY/100.0);
  
  float camZ=(height/2.0)/tan(PI*60.0/360.0);
  camera(mouseX,mouseY,mouseX/2.0,width/2.0,height/2.0,0,0,1,0);
  translate(width/2,height/2,-20);
  
  int dim=18;
  for(int i=-height/2;i<height/2;i+=dim*1.4){
    for(int j=-width/2;j<width/2;j+=dim*1.4){
      pushMatrix();
      translate(i,j,-j);
      box(dim,dim,dim);
      popMatrix();
      
      //beginShape();
      //vertex(i,j,0);
      //vertex(i+dim,j,0);
      //vertex(i+dim,j+dim,-dim);
      //vertex(i,j+dim,-dim);
      //endShape();
    }
  }
  if(frameCount < 100) saveFrame("####.tif");
  else exit();
}