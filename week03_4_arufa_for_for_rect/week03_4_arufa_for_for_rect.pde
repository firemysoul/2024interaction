PImage img;
void setup(){
 size(600, 400);
 img = loadImage("arufa.jpg");
}
void draw(){
  image(img, 0 ,0);
  noCursor();
  noStroke();
  fill(200, 200, 255, 128);

}
