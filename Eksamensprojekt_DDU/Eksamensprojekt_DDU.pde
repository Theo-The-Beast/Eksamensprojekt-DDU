Background b = new Background(); //<>// //<>//
Billeder pic = new Billeder(); 
Fjender f = new Fjender();
Debug Debug = new Debug();
Spiller s = new Spiller(400, 550, 100, 100);
Collectibles c = new Collectibles();
WinLose wl = new WinLose();
Menu m = new Menu();

int w = 1258;
int w2 = 142;

int startTime = 0;
int time = 0;

int scene = 0;

float tyndekraft;
boolean tyndekraftBool = true;

void setup() {
  size(1600, 900);
  frameRate(60);
  pic.loadBilleder();
}

void draw() {
  clear();
  vaegge();
  tyndekraft();
  println(scene);
  if (scene==0) {
    m.display();
  }

  if (scene == 1) {
    level();
  }

  if (scene == 2) {
    m.regler();
  }

  if (scene == 3) {
    wl.lose();
  }

  if (scene == 4) {
    wl.win();
  }
}

void level() { 
  vaegge();
  //BAGGRUND
  noStroke();
  fill(112, 82, 0);
  b.tegnbaggrund();
  text(c.antalCollect + "/10", 50, 50);

  //indsæt spilleren
  s.tegnSpiller();
  s.bevagSpiller();
  s.maksHopHoejde();

  //Debug
  Debug.Debug();

  //Fjender
  f.tegnFjender();
  f.bevaegFjender();
  f.collideFjender();

  timer();
  //c.lektier();
  //c.collect();
  //println("xpos " + s.xPos);
  //println("Collect xPos " + c.collectXpos);
  println("ypos " + s.yPos);
  //println("stribex " + b.stribeX);
  println("tyndekraft " + tyndekraft);

  //Tilbage knap
  rect(20, 20, 30, 30);
  fill(0);
  rect(28, 22, 4, 26);
  rect(38, 22, 4, 26);
  fill(255);
}

void keyPressed() {
  s.bevagSpillerPress();
  s.spillerHopPress();
}

void keyReleased() {
  s.bevagSpillerRelease();
  s.spillerHopRelease();
}

void mouseClicked() {
  if (scene == 0) {
    m.menuKlik();
  } else if (scene == 1) {
    m.tilbageKnap();
  } else if (scene == 2) {
    m.tilbageKnap();
  } /*else if (scene == 3) {
   Lvl.level3Knap();
   } else if (scene == 4) {
   m.tilbageKnap();
   } else if (scene == 5) {
   }*/
}

void vaegge() {
  if (s.xPos - 10 < w2) { 
    s.xPos = w2 + 10;
  }
  if (s.xPos + 10 > w) { 
    s.xPos = w - 10;
  }
}

void tyndekraft() {

  if (s.yPos >= 550) {
    tyndekraftBool=true;
  } else {
    tyndekraftBool = false;
  }
  
  if (tyndekraftBool) {
    tyndekraft = 0;
  } else {
    tyndekraft = 4;
  }
}

void ingenTyndekraft() {
  tyndekraft = 0;
}

void timer() {
  time = millis()/1000 - startTime;
  textSize(32);
  text(time, 1500, 100);
}
