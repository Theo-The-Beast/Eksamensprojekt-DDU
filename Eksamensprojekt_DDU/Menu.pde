class Menu {

  void display() {
    image(pic.WB, 0, 0);
    //knapper
    rect(675, 350, 250, 100);
    rect(675, 500, 250, 100);
    rect(675, 650, 250, 100);

    //text
    textSize(32);
    fill(0);
    text("Start", 765, 411);
    text("Rules", 765, 561);
    text("Exit", 765, 711);
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
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 350 && mouseY <= 450) {
      scene = 1;
    }
    //Regler
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 500 && mouseY <= 600) {
      scene = 2;
    }
    //Quit
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 650 && mouseY <= 750) {
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
      textAlign(CENTER);
      textSize(64);
      text("Velkommen til XXX\n", 800, 150);
      textSize(32);
      text("Reglerne i Plagiat Simulator 2021 går ud på at du skal bestå gymnasiet\n uden at blive taget for plagiat. Det gør du ved at samle alle nørdernes opgaver \n og nå til skolen uden at få 3 advarsler.", 800, 250);
      textSize(50);
      text("Styring: \nVenstre: ←   Hop: ↑   Højre: → ", 790, 750);
      textSize(18);

      image(pic.lektier, 450, 400);
      text("= Opgaver... Du skal samle 3 af disse for at vinde", 800, 450);
      image(pic.liv, 460, 550, 80, 80);
      text("= Advarsler... Hvis du får 3 advarsler har du tabt", 795, 600);
      textSize(32);
      textAlign(LEFT);


      //Tilbage knap
      rect(20, 20, 30, 30);
      fill(0);
      text("<", 20, 44);
      fill(255);
    }
  }
