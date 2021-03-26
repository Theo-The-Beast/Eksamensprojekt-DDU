Background b = new Background(); //<>// //<>//
Billeder pic = new Billeder();//<>// //<>//
Debug Debug = new Debug();
Spiller s;

int w = 1258;
int w2 = 142;

void setup() {
  size(1600, 900);
  frameRate(60);
  pic.loadBilleder();
  s = new Spiller(400, 550, 100, 100);
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
  
  //Debug
  Debug.Debug();
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
