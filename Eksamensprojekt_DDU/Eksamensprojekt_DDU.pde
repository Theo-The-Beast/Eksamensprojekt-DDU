Background b = new Background(); //<>// //<>// //<>// //<>// //<>// //<>//
Billeder pic = new Billeder(); 
Fjender f = new Fjender();
Debug Debug = new Debug();
Spiller s = new Spiller(400, 550, 100, 100);
Collectibles c = new Collectibles();
WinLose wl = new WinLose();
Menu m = new Menu();
Obstacles o = new Obstacles();

int w = 1258;
int w2 = 142;

int startTime = 0;
int time = 0;

int scene = 0;

float tyndekraft;
int tyndekraftStartPos = 550;

boolean tyndekraftAktiv = true;
boolean tyndekraftBool = false;

int samletCollect;

int liv = 3;

int point = 0;

void setup() {
  size(1600, 900);
  frameRate(60);
  pic.loadBilleder();
}

void draw() {
  clear();
  vaegge();
  tyndekraft();
  //println(scene);
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
  //Debug
  Debug.Debug();
}

void level() { 
  vaegge();
  //BAGGRUND
  noStroke();
  fill(112, 82, 0);
  b.tegnbaggrund();

  //Collectibles
  text(samletCollect + "/3", 100, 50);
  image(pic.lektier, 160, 25, 30, 30);

  //Liv
  text(liv + "/3", 100, 100);
  image(pic.liv, 160, 75);
  //Point
  textAlign(CENTER);
  textSize(50);
  text(point, 800, 60);
  textAlign(LEFT);

  //Fjender
  f.tegnFjender();
  f.collideFjender();
  f.collideKillFjende();
  f.bevaegFjender();

  //Collectibles
  c.visLektier();
  c.collectColide();

  //Obstacles
  o.visObstacle();
  o.collideObstacle();

  //indsæt spilleren
  s.tegnSpiller();
  s.bevagSpiller();
  s.maksHopHoejde();

  timer();
  //println(f.collideFjende);
  //println("CollectXpos1: "+ c.collectXpos1);
  //println("CollectXpos2: "+ c.collectXpos2);
  //println("CollectXpos3: "+ c.collectXpos3);
  //println("xpos " + s.xPos);
  //println("Collect xPos " + c.collectXpos);
  //println("ypos " + s.yPos);
  //println("Collect yPos " + c.collectYpos);
  //println(c.collectFaaet);
  //println("Ob ypos " + o.obstacleYPos);
  //println("stribex " + b.stribeX);
  //println("tyndekraft " + tyndekraft);
  println("tyndekraftStartPos " + tyndekraftStartPos);
  //println(s.hoppe);
  //println("Fjende ypos: " + f.fjenderYpos);

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
  } else if (scene == 2) {
  } else if (scene == 3) {
    wl.loseKnap();
  } else if (scene == 4) {
    wl.winKnap();
  } else if (scene == 5) {
  }
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
  if (s.yPos <= tyndekraftStartPos && tyndekraftAktiv == true) {
    tyndekraftBool = true;
  } else {
    tyndekraftBool = false;
  }

  if (tyndekraftBool) {
    tyndekraft = 5;
  } else {
    tyndekraft = 0;
  }
}

void ingenTyndekraft() {
  tyndekraftAktiv = false;
  tyndekraftBool = false;
}

void timer() {
  time = millis()/1000 - startTime;
  textSize(32);
  text(time, 1500, 100);
}
