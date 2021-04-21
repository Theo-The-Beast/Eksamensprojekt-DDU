Background b = new Background(); //<>// //<>// //<>//
Billeder pic = new Billeder();//<>// //<>// //<>//
Debug Debug = new Debug();
Spiller s = new Spiller(400, 550, 100, 100);
Collectibles c = new Collectibles();


int w = 1258;
int w2 = 142;

int startTime = 0;
int time = 0;

void setup() {
  size(1600, 900);
  frameRate(60);
  pic.loadBilleder();
  
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
  
  timer();
  c.lektier();
  c.collect();
  println("xpos " + s.xPos);
  println("ypos " + s.yPos);
  println("stribex " + b.stribeX);
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

void timer() {
  time = millis()/1000 - startTime;
  textSize(32);
  text(time, 1500, 100);
}
