class CollectiblesGenerator {

  ArrayList<Collectibles> liste = new ArrayList<Collectibles>();

  int antalCollectibles;

  void antalCollectibles(int antal) {
    liste.clear();
    for (int i = 0; i < antal; i++) {
      Collectibles c = new Collectibles(2000, 650);
      liste.add(c);
    }
    antalCollectibles = antal;
  }

  void display() {
    for (Collectibles c : liste) {
      c.visLektier();
    }
  }

  void collideDetection() {
    for (Collectibles c : liste) {
      if (s.xPos+100 >= c.collectXpos-50 && s.xPos+100 <= c.collectXpos+50 && s.yPos >= c.collectYpos-200 && c.collectFaaet == false) {
        c.collectFaaet = true;
        if (c.collectFaaet) {
          samletCollect += 1;
        }
        c.visCollect = false;
      }
      println("Boolean visCollect "+c.visCollect);
      println("Boolean collectFaaet "+c.collectFaaet);
    }
  }
}
