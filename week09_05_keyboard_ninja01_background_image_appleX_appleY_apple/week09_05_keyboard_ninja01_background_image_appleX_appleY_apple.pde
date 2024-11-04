PImage board;//外面宣告變數
void setup(){
   size(600, 400);
   board = loadImage("board.png");   
}
float appleX = 200, appleY = 200, appleVX = 3, appleVY = -10;
void draw(){
   background(board); 
   fill(255,0,0);
   ellipse(appleX, appleY, 80, 80);
   appleX += appleVX;
   appleY += appleVY;
   appleVY += 0.98;//0.98 gravity 重力加速度
   if(appleX>600){
      appleX = 100; 
      appleY = 500;
      appleVX = 5; 
      appleVY = -30; 
   }//當蘋果太右邊時,重設新的蘋果的位置、速度
}
