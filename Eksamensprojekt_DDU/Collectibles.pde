class Collectibles {

  int collectXpos;
  int collectYpos;
  int antalCollect;

  boolean visCollect = true;
  boolean collectFaaet = false;

  void lektier() {
    collectXpos=b.stribeX+1600;
    collectYpos=650;
    if (visCollect) {
      ellipse(collectXpos, collectYpos, 100, 100);
      text("Deez nuts",collectXpos, collectYpos, 20,20);
    }
  }

  void collect() {
    if (s.xPos+100 >= collectXpos-50 && s.xPos+100 <= collectXpos+50 && s.yPos == collectYpos-100 && collectFaaet == false) {
      collectFaaet = true;
      if (collectFaaet) {
        antalCollect += 1;
      }
      visCollect = false;
    }
  }
}
