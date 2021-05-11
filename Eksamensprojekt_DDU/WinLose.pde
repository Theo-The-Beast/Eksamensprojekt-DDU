class WinLose {
  //booleans
  boolean win;
  boolean lose;

  void win() {
    //Background
    image(pic.WB, 0, 0);

    //Spilleren med diplom
    image(pic.WinnerMario,590,380);
    
    //Anders og john
    image(pic.GladJohn,400,550);
    image(pic.GladAnders,970,550);
    //Tekst
    textAlign(CENTER);
    fill(0);
    textSize(64);
    text("Tillykke du betod \nGymnasiet",800,200);
    textAlign(LEFT);
    
    //Knapper
    fill(255);
    rect(260, 780, 250, 100);
    rect(660, 780, 250, 100);
    rect(1060, 780, 250, 100);
  }

  void winKnap() {
  }

  void lose() {
    println("Lose Screen");
  }

  void loseKnap() {
  }
}
