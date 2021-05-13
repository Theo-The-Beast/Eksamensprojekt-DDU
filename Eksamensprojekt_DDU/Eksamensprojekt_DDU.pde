Background b = new Background(); //<>// //<>//
Billeder pic = new Billeder(); 
Fjender f = new Fjender();
Debug Debug = new Debug();
Spiller s = new Spiller(400, 550);
Collectibles c = new Collectibles();
WinLose wl = new WinLose();
Menu m = new Menu();
Obstacles o = new Obstacles();
Highscore hs = new Highscore(); 

IntList HighScores = new IntList(5); 

Table t  = new Table();

boolean check = true;
boolean timeAktiv = false;
boolean tyndekraftAktiv = true;
boolean tyndekraftBool = false;

int w = 1258;
int w2 = 142;

float time = 0;
float tyndekraft;

int startTime = 0;
int tyndekraftStartPos = 550;
int scene = 0;
int samletCollect;
int liv = 3;
int point = 0;
int visTid;


// SÆT CHECK TIL TRUE NÅR VI RESTARTER
void setup() {
  size(1600, 900);
  frameRate(60);
  pic.loadBilleder();

  File fil = dataFile("new.csv"); 

  String filepath = fil.getPath();
  boolean exist = fil.isFile();

  if (exist) {
    t = hs.loadCSV(t);
  } else {
    hs.lavCSV();
  }

  hs.forberedHighScore();
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
    hs.endeligScore();
    if (check) {
      hs.saveCSV(t);
      check = false;
    }
  }
  if (scene == 5) {
    m.visHighScore();
  }
  if (scene == 6) {
    wl.loseTilHul();
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
  timeAktiv = true;


  //Collectibles
  fill(155, 155, 155);
  //ellipse(142,67, 130,130);
  fill(118, 118, 118);
  text(samletCollect + "/3", 100, 50);
  image(pic.lektier, 160, 25, 30, 30);

  //Liv
  text(liv + "/3", 100, 100);
  image(pic.liv, 160, 75);
  //Point
  textAlign(CENTER);
  textSize(50);
  fill(118, 118, 118);
  //ellipse(800,45,150,70);
  fill(155, 155, 155);
  text(point, 800, 60);
  textAlign(LEFT);

  //Fjender

  f.collideFjender();
  f.collideKillFjende();
  f.tegnFjender();

  //Collectibles
  c.visLektier();
  c.collectColide();

  //Obstacles
  o.visObstacle();
  o.collideObstacle();
  wl.molstreg();

  //indsæt spilleren
  s.tegnSpiller();
  s.bevagSpiller();
  s.maksHopHoejde();

  timer();
  //println(f.collideFjende);
  //println("CollectXpos1: "+ c.collectXpos1);
  //println("CollectXpos2: "+ c.collectXpos2);
  //println("CollectXpos3: "+ c.collectXpos3);
  println("xpos " + s.xPos);
  //println("Collect xPos " + c.collectXpos);
  //println("ypos " + s.yPos);
  //println("Collect yPos " + c.collectYpos);
  //println(c.collectFaaet);
  //println("Ob ypos " + o.obstacleYPos);
  //println("stribex " + b.stribeX);
  //println("tyndekraft " + tyndekraft);
  //println("tyndekraftStartPos " + tyndekraftStartPos);
  //println(s.hoppe);
  //println("Fjende ypos: " + f.fjenderYpos);
  //println("StartXPos: " + s.startXPos);
  print("ScreenMover " + b.screenMover);

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
    m.tilbageKnap(); //Lav pause knap
  } else if (scene == 2) {
    m.tilbageKnap();
  } else if (scene == 3) {
    wl.loseKnap();
  } else if (scene == 4) {
    wl.winKnap();
  } else if (scene == 5) {
    m.tilbageKnap();
  } else if (scene == 6) {
    wl.loseKnap();
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
  if (timeAktiv) {
    time += 1/frameRate;
    visTid = round(300-time);
  }
  textSize(32);
  fill(155, 155, 155);
  // ellipse(1529,65,80,50);
  fill(118, 118, 118);
  text(visTid, 1500, 75);
  fill(255);
}

void reset() {
  //Liv
  liv = 3;

  //Point
  point = 0;

  //Tid
  time = 0;

  //Collect
  samletCollect = 0;
  c.visCollect1 = true;
  c.collectFaaet1 = false;
  c.visCollect2 = true;
  c.collectFaaet2 = false;
  c.visCollect3 = true;
  c.collectFaaet3 = false;

  //Fjende
  f.visFjende = true;
  f.visFjende2 = true;
  f.visFjende3 = true;
  f.visFjende4 = true;
  f.visFjende5 = true;

  //Spiller
  s.xPos = s.startXPos;
  s.yPos = s.startYPos;
  
  //Baggrund
  b.screenMover = 0;
  b.kirkeX = 50;
  b.husX = 1030;
  b.hotelX = 510;
  b.treeX = 1850;
  b.sky1X = 30;
  b.sky2X = 1030;
  b.sky3X = 1350;
}

void pause(){

}
