class Collectibles {

  ArrayList<Collectibles> liste = new ArrayList<Collectibles>();
  
  int collectXpos;
  int collectYpos;

  boolean visCollect = true;
  boolean collectFaaet = false;

  Collectibles(int xPos, int yPos){
    collectXpos = xPos;
    collectYpos = yPos;
  }

  void visLektier() {
    collectXpos += b.screenMover;
    if (visCollect) {
      ellipse(collectXpos, collectYpos, 100, 100);
      text("Deez nuts", collectXpos, collectYpos, 20, 20);
    }
  }

  void collect() {
    if (s.xPos+100 >= collectXpos-50 && s.xPos+100 <= collectXpos+50 && s.yPos >= collectYpos-200 && collectFaaet == false) {
      collectFaaet = true;
      if (collectFaaet) {
        samletCollect += 1;
      }
      visCollect = false;
    }
  }
}
