void setup() {
  size(500, 400);
}
void keyPressed(){
   if(keyCode==RIGHT) x+=1;
   if(keyCode==LEFT) x-=1;
   if(keyCode==UP) y-=1;
   if(keyCode==DOWN) y+=1;
}
float x = 250, y = 200;
void draw() {
  background(219);//灰底
  translate(-x, -y);
  translate(width/2, height/20);
  float mx= mouseX+x-width/2, my = mouseY+y-height/2;  
  ellipse(mx, my, 8, 8);
  stroke(150);
  strokeWeight(1);
  for(int i=0; i<30; i++){
     line(0, i*30, 500, i*30);
     line(i*30, 0, i*30, 500);
  }
  float dx = mx- x, dy = my - y;
  float a = atan2(dy, dx);//atant3算出角度
  line(x, y, mx, my);
  myTank(x, y, a);
}
void myTank(float x, float y, float a) {
  translate(x, y);
  rotate(a);
  fill(167, 167, 175);
  stroke(110, 110, 113);
  strokeWeight(4);
  rect(20, -10, 20, 20);

  fill(202, 102, 156);
  stroke(125, 84, 105);
  strokeWeight(3);
  ellipse(0, 0, 55, 55);
}
