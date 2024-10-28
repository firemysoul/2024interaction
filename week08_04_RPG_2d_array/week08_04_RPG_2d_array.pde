int [][] floor = {
  {3, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3},
  {3, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3},
  {3, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3},
  {3, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3}
};
PImage img;
PImage [] fimg = new  PImage[40];
void setup(){
   size(640,480);//15格=480,480/15=32
   img = loadImage("640x480.png");
   for(int i=1; i<=22; i++) fimg[i] = loadImage(i+".png");
}
void draw(){
   background(img); 
   for(int i=0; i<floor.length; i++){//高
      for(int j=0; j<20; j++){//寬
         int now = floor[i][j];
         image(fimg[now],j*32, i*32);
      }
   }
}
