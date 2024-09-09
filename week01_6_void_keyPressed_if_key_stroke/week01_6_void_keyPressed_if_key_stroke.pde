void setup(){
  size(500,500);//大小 
}
void draw(){
  if(mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}//如果mouse按下去,就畫線mouse的XY座標 previous mouse XY

void keyPressed(){
   if(key=='1') strokeWeight(1);
   if(key=='2') strokeWeight(5);
   if(key=='3') strokeWeight(10);
   if(key=='4') stroke(255, 255, 0);//黃
   if(key=='5') stroke(255, 0, 255);//粉
}//如果 key按下去,看key的值,決定線的粗細
