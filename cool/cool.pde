float a=0;
BOX b;
ArrayList<BOX> sponge;
void setup() {
  size(800,800,P3D);
  sponge=new ArrayList<BOX>();
  b=new BOX(0,0,0,600);
  sponge.add(b);
}

void mousePressed() {
  ArrayList<BOX> next=new ArrayList<BOX>();
  for(BOX b:sponge) {
    ArrayList<BOX> newBoxes=b.generate();
    next.addAll(newBoxes);
  }
  sponge=next;
}

void draw() {
 background(51);
 stroke(255);
 noFill();
 lights();
 
 translate(width/2,height/2);
 rotateX(a*2);
 rotateY(a);
 rotateZ(a*0.5);
 for(BOX b:sponge) {
   b.show();
 }
 a+=0.01;
}