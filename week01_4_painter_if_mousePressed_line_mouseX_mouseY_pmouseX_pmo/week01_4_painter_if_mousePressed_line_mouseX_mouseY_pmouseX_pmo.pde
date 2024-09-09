void setup(){
  size(500,500);//大小 
}
void draw(){
  if(mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}//如果mouse按下去,就畫線mouse的XY座標 previous mouse XY
