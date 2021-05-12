class WinLose {
  //booleans
  boolean win;
  boolean lose;

  void win() {
    //Background
    image(pic.WB, 0, 0);

    //Spilleren med diplom
    image(pic.WinnerMario, 590, 380);

    //Anders og john
    image(pic.GladJohn, 400, 550);
    image(pic.GladAnders, 970, 550);

    //Tekst
    textAlign(CENTER);
    fill(0);
    textSize(64);
    text("Tillykke du bestod \nGymnasiet", 800, 200);
    textAlign(LEFT);

    //Knapper
    fill(255);
    rect(260, 780, 250, 100);
    rect(660, 780, 250, 100);
    rect(1060, 780, 250, 100);

    //Tekst til knapper
    fill(0);
    textSize(32);
    text("Prøv igen", 310, 840);
    text("Main Menu", 700, 840);
    text("Quit", 1150, 840);
    fill(255);
  }

  void winKnap() {
    //Prøv igen
    if (mouseX >=260 && mouseX <= 510 && mouseY >= 780 && mouseY <= 880) {
      scene = 1;
    }
    // Main menu
    if (mouseX >=660 && mouseX <= 910 && mouseY >= 780 && mouseY <= 880) {
      scene = 0;
    }
    //Quit
    if (mouseX >=1060 && mouseX <= 1310 && mouseY >= 780 && mouseY <= 880) {
      exit();
    }
  }

  void lose() {
    //Background
    image(pic.WB, 0, 0);

    //Triste Mario
    image(pic.TristeMario, 590, 380);

    //Anders og john
    image(pic.SurJohn, 400, 550);
    image(pic.SurAnders, 970, 550);

    //Tekst
    textAlign(CENTER);
    fill(0);
    textSize(64);
    text("Du er blevet taget i plagiat \n og er blevet bortvist ", 800, 100);
    textAlign(LEFT);

    //Knapper
    fill(255);
    rect(260, 780, 250, 100);
    rect(660, 780, 250, 100);
    rect(1060, 780, 250, 100);

    //Tekst til knapper
    fill(0);
    textSize(32);
    text("Prøv igen", 310, 840);
    text("Main Menu", 700, 840);
    text("Quit", 1150, 840);
    fill(255);
  }

  void loseKnap() {
    //Prøv igen
    if (mouseX >=260 && mouseX <= 510 && mouseY >= 780 && mouseY <= 880) {
      scene = 1;
    }
    // Main menu
    if (mouseX >=660 && mouseX <= 910 && mouseY >= 780 && mouseY <= 880) {
      scene = 0;
    }
    //Quit
    if (mouseX >=1060 && mouseX <= 1310 && mouseY >= 780 && mouseY <= 880) {
      exit();
    }
  }
}
