int N = 299;
PImage[] imgs = new PImage[299];
void setup(){
  size(800, 800);
  String[]filenames = loadStrings("list.txt");
  for(int i=0; i<N; i++){//把每一張圖都讀進來
    imgs[i] = loadImage(filenames[i]);
  }
}
void draw(){
  int i = frameCount % N;//照時間輪%N取餘數，避免超過陣列大小
  background(imgs[i]);//顯示第i張圖
}
