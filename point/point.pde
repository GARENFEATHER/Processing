PImage origin=loadImage("459afc8egw1f5mkkmjgvaj21kw1ohdz9.jpg");
PImage pic=loadImage("459afc8egw1f5mkkmjgvaj21kw1ohdz9.jpg");
pic.filter(THRESHOLD,0.96);
pic.resize(pic.width+2,pic.height+2);
origin.resize(pic.width+2,pic.height+2);
int dia=6,spacing=10;
size(2048,2177);
for(int i=spacing/2;i<pic.width;i+=spacing)
{
  for(int j=spacing/2;j<pic.height;j+=spacing)
  {
    if(pic.get(i,j) == color(0))
    {
      fill(origin.get(i,j));
      noStroke();
      ellipse(i,j,dia,dia);
    }
  }
}