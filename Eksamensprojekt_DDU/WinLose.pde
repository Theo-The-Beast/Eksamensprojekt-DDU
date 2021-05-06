class WinLose {
  //booleans
  boolean win;
  boolean lose;

  void win() {
    textSize(64);
    fill(random(0, 255), random(0, 255), random(0, 255));
    textAlign(CENTER);
    text("YOU WIN", 800, 200);
    textAlign(LEFT);
    fill(255);
    textSize(32);

    fill(255);
    //Knapper
    rect(675, 500, 250, 100);
    rect(675, 650, 250, 100);
    fill(0);

    text("Main Menu", 725, 561);
    text("Exit", 765, 711);
    fill(255);
  }

  void winKnap() {
  }

  void lose() {
    println("Lose Screen");
  }

  void loseKnap() {
  }
}
