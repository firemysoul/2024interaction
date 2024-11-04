import processing.sound.*;

import processing.sound.*;
SoundFile sound;

void setup(){
   size(500, 500);
   sound = new SoundFile(this, "Gong.mp3");
   //sound.play();
   sound.loop();//循環播放
}
void draw(){
  
}
