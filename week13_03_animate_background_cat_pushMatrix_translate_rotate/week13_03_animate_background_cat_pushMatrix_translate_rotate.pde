PImage img;
void setup(){
   size(500, 300);
   img = loadImage("cat.jpg");
   imageMode(CENTER);
}
void cat(int x, int y){
   pushMatrix();
     translate(x,y);
     rotate(radians(frameCount));//算角度
     image(img, 0, 0);
   popMatrix();
}
void draw(){
   background(255);
   cat(mouseX, mouseY);
   cat(100, 100);
   cat(400, 100);
   cat(100, 200);
   cat(400, 200);
}
