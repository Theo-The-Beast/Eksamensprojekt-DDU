Background b = new Background();
Billeder pic = new Billeder();//<>// //<>//
Spiller s;

int w = 1158;
int w2 = -82;

void setup() {
  size(1600, 900);
  frameRate(60);
  pic.loadBilleder();
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
  if (s.xPos - 10 < w2) { 
    s.xPos = w2 + 10;
  }
  if (s.xPos + 10 > w) { 
    s.xPos = w - 10;
  }
}
