class Collectibles {

  int collectXpos;
  int collectYpos;

  void lektier() {
    collectXpos=b.stribeX+1600;
    collectYpos=650;
    ellipse(collectXpos, collectYpos, 20, 20);
  }

  void collect() {
    if (s.xPos == collectXpos && s.yPos == collectYpos) {
      println("hej");
    }
  }
}
