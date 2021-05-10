class CollectiblesGenerator {

  ArrayList<Collectibles> liste = new ArrayList<Collectibles>();

  int antalCollectibles;

  void antalCollectibles(int antal) {
    liste.clear();
    for (int i = 0; i < antal; i++) {
      Collectibles c = new Collectibles();
      liste.add(c);
    }
    antalCollectibles = antal;
  }

  void display() {
    c.visLektier();
  }

  void collideDetection() {
    c.collect();
  }
}
