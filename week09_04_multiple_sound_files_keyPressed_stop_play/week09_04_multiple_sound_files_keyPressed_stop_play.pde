import processing.sound.*;
SoundFile sound1, sound2, hit;
void setup(){
 size(500, 500);
 sound1 = new SoundFile(this, "In Game Music.mp3");
 sound2 = new SoundFile(this, "Gong.mp3");
 hit = new SoundFile(this, "sword slash.mp3");
}
void draw(){
   background(255); 
}
void mousePressed(){
 hit.play(); 
}
void keyPressed(){
   if(key=='1'){
      sound2.stop();
      sound1.play();    
   }else{
      sound1.stop();
      sound2.play();
   }
}
