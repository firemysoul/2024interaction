int [][] floor = {
  {3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 3, 5, 6, 3, 3, 3, 14, 3, 3, 3, 3, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 3, 3, 3, 7, 8, 9, 3, 3, 3, 3, 3, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 10, 3, 3, 3, 3, 3, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 3, 18, 19, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3},
  {3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3}
};
PImage img, user;
PImage [] fimg = new  PImage[40];
void setup() {
  size(640, 480);//15格=480,480/15=32
  img = loadImage("640x480.png");
  user = loadImage("20.png");
  for (int i=1; i<=22; i++) fimg[i] = loadImage(i+".png");
}
int userI = 12, userJ = 15;
void draw() {
  background(img);
  for (int i=0; i<floor.length; i++) {//高
    for (int j=0; j<20; j++) {//寬
      int now = floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user, 16, 16);
  textSize(30);
  text("Level:   "+ level, 16, 90);
  textSize(20);
  text("HP:   "+hp, 16, 140);
  text("ATK:   "+ATK, 16, 170);
  text("Defense:   "+defense, 16, 200);
  text("Magic:   "+ magic, 16, 260);
  text("Coins:　　"+ coin, 16, 290);

  image(user, userJ*32, userI*32);
  if (gameOver==1)background(0, 255, 0);
  if (gameOver==2)background(0, 255, 0);
}
int level = 1, hp = 2693, ATK = 14, defense = 16, magic=10, exp =73, coin = 0;
int gameOver = 0;
void keyPressed() {
  int newI = userI, newJ = userJ;
  if (keyCode==RIGHT) newJ++;
  if (keyCode==LEFT) newJ--;
  if (keyCode==UP) newI--;
  if (keyCode==DOWN) newI++;
  if (floor[newI][newJ]==14) {
    if (hp-10<=0)gameOver = 2;
    else {
      hp -= 10;
      userI = newI;
      userJ = newJ;
      floor[userI][userJ] = 2;
    }
  } else if (floor[newI][newJ]!=2 && floor[newI][newJ]!=4) {
    userI = newI;
    userJ = newJ;
    if (floor[userI][userJ]==14)gameOver = 1;
    floor[userI][userJ] = 3;
  }
}
