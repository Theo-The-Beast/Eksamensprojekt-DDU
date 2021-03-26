Background b = new Background();
Spiller s;

PImage mario;

int w = 1482;
int w2 = -82;

void setup() {
  size(1600, 900);
  frameRate(60);
  mario = loadImage("Mario.png");
  b.skull = loadImage("skull.png");
   b.hus = loadImage("Hus.png");
   b.path = loadImage("path.png");
   b.path2 = loadImage("path2.png");
   //b.path3 = loadImage("path3.png");
   b.hotel = loadImage("hotel.png");
  s = new Spiller(35, 500, 100, 100);
}

void draw() {
  clear();
  vaegge();

  //BAGGRUND
  noStroke();
  fill(112, 82, 0);
  b.tegnbaggrund();

  //indsæt spilleren
  s.tegnSpiller();
  s.bevagSpiller();

}
void keyPressed() {
  s.bevagSpillerPress();
}

void keyReleased() {
  s.bevagSpillerRelease();
}

void vaegge() {
  if (s.xPos - 10 < w2) {  //<>//
    s.xPos = w2 + 10;
  }
  if (s.xPos + 10 > w) {  //<>//
    s.xPos = w - 10;
  }
}
