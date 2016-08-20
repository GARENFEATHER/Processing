class BOX {
  PVector pos;
  float r;
  
  BOX(float x,float y,float z,float r_) {
    pos=new PVector(x,y,z);
    r=r_;
  }
  
  ArrayList<BOX> generate() {
    ArrayList<BOX> boxes=new ArrayList<BOX>();
    for(int x=-1;x<2;x++) {
      for(int y=-1;y<2;y++) {
        for(int z=-1;z<2;z++) {
          
          int sum=abs(x)+abs(y)+abs(z);
          float newR=r/3;
          if(sum <= 1) {
            BOX b=new BOX(pos.x+x*newR,pos.y+y*newR,pos.z+z*newR,newR);
            boxes.add(b);
          }
        }
      }
    }
    return boxes;
   }
    
  void show() {
    pushMatrix();
    translate(pos.x,pos.y,pos.z);
   // fill(255);
    box(r);
    popMatrix();
  }
  
}