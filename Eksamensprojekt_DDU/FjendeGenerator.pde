class FjendeGenerator {

  ArrayList<Fjender> liste = new ArrayList<Fjender>();

  int antalCollectibles;

  void antalFjender(int antal) {
    liste.clear();
    for (int i = 0; i < antal; i++) {
      Fjender f = new Fjender();
      liste.add(f);
    }
    antalCollectibles = antal;
  }

  void display() {
    f.tegnFjender();
  }
  
  void collideDetection(){
    f.collideFjender();
  }
}
