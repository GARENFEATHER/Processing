int n=6;
PVector[] p=new PVector[n];
int[] order={1,2,3,1,4,5,6,4,2,5,3,6,1};

void setup(){
  size(400,400,P3D);
  smooth();
  stroke(255);
  noFill();
  String[] lines=loadStrings("IODATA.txt");
  for(int i=0;i<n;i++){
    String[] data=lines[i].split(" ");
    p[i]=new PVector(Float.parseFloat(data[0])*100,Float.parseFloat(data[1])*100,Float.parseFloat(data[2])*100);
  }
}

void draw(){
  background(0);
  strokeWeight(2);
  translate(width/2,height/2,-130);
  rotateY(frameCount*0.01);
  rotateZ(frameCount*0.02);
  beginShape();
  for(int i=0;i<order.length;i++){
    vertex(p[order[i]-1].x,p[order[i]-1].y,p[order[i]-1].z);
  }
  endShape();
}