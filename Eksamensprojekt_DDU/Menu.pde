class Menu {

  void display() {
    image(pic.WB, 0, 0);
    //knapper
    rect(675, 330, 250, 100);
    rect(675, 480, 250, 100);
    rect(675, 630, 250, 100);
    rect(675, 780, 250, 100);


    //text
    textSize(32);
    fill(0);
    text("Start", 765, 391);
    text("Rules", 760, 541);
    text("High Score", 717, 691);
    text("Quit", 765, 841);
    textSize(64);
    fill(0);
    textAlign(CENTER);
    text("Plagiat Simulator 2021", 800, 200);
    textAlign(NORMAL);
    textSize(32);  
    fill(255);
  }

  void menuKlik() {
    //Start spil
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 330 && mouseY <= 430) {
      scene = 1;
    }
    //Regler
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 480 && mouseY <= 580) {
      scene = 2;
    }
    //HighScoreTavle
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 630 && mouseY <= 730) {
      scene = 5;
    }

    if (mouseX >=675 && mouseX <= 925 && mouseY >= 780 && mouseY <= 880) {
      exit();
    }
  }

  void tilbageKnap() {
    //Home/pause
    if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
      scene=0;
    }
  }

  void regler() {
    image(pic.Board, 0, 0);
    textAlign(CENTER);
    textSize(64);
    text("Velkommen til XXX\n", 800, 150);
    textSize(32);
    text("Reglerne i Plagiat Simulator 2021 går ud på at du skal bestå gymnasiet\n uden at blive taget for plagiat. Det gør du ved at samle alle nørdernes opgaver \n og nå til skolen uden at få 3 advarsler, \n eller ryge i et fraværshul.", 800, 230);
    textSize(50);
    text("Styring: \nVenstre: ←   Hop: ↑   Højre: → ", 790, 760);
    textSize(18);

    image(pic.lektier, 450, 400);
    text("= Opgaver... Du skal samle 3 af disse for at vinde", 800, 450);
    image(pic.liv, 460, 530, 80, 80);
    text("= Advarsler... Hvis du får 3 advarsler har du tabt", 795, 580);
    image(pic.HulSkilt,475,630,50,90);
    text("= Fraværshul... Falder du i et fraværshul har du tabt", 810, 660);
    
    textSize(32);
    textAlign(LEFT);


    //Tilbage knap
    rect(20, 20, 30, 30);
    fill(0);
    text("<", 20, 44);
    fill(255);
  }

  void visHighScore() {
    //DESIGN
    image(pic.Board, 0, 0);
    textSize(64);
    text("HIGH SCORES", 570, 200);
    textSize(32);
    text("1. \n2. \n3. \n4. \n5. ", 680, 400);


    //Tilbage knap
    rect(20, 20, 30, 30);
    fill(0);
    text("<", 20, 44);
    fill(255);

    // VIS HIGHSCORETALLENE
    HighScores.sortReverse();
    for (int i = 0; i< HighScores.size(); i++) {
      text(HighScores.get(i), 780, 400+(i*50));
      text("point \npoint \npoint \npoint \npoint",860,395);
      if (i>=4) {
        break;
      }
    }
  }
}
