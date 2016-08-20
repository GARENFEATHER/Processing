void setup(){
  size(1024,480);
  background(0);
  smooth();
  fill(255);
  stroke(102);
}
void draw(){
  for(int y=40;y<=height-40;y+=40){
    for(int x=20;x<=width-40;x+=40){
      ellipse(x,y,5,5);
    }
  }
}
void mousePressed(){
  for(int y=40;y<=height-40;y+=40){
    for(int x=20;x<=width-40;x+=40){
      line(x,y,mouseX,mouseY);
    }
  }
}