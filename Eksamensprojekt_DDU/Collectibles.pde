class Collectibles {

  int collectXpos;
  int collectYpos;

  void lektier() {
    ellipse(b.stribeX+1600, 650, 20, 20);
  }

  void collect() {
    if (s.xPos >= 1590 && s.xPos <= 1610 && s.yPos >= 540 && s.yPos <= 560) {
      println("hej");
    }
  }
}
