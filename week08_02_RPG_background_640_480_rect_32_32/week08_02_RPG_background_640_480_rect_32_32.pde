PImage img;
void setup(){
   size(640,480);//15格=480,480/15=32
   img = loadImage("640x480.png");
}
void draw(){
   background(img); 
   for(int i=0; i<15; i++){//高
      for(int j=0; j<20; j++){//寬
         noFill();
         rect(j*32, i*32, 32, 32);
      }
   }
}
