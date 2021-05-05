class Fjender {
  int fjenderXpos;
  int fjenderYpos;


  void tegnFjender() {
    fjenderXpos = 1600 + b.stribeX;
    fjenderYpos = 650;
    rect(fjenderXpos, fjenderYpos, 100, 100);
  }

  void bevaegFjender() {
  }

  void collideFjender() {

    if (s.xPos+100 >= fjenderXpos /*50 er bredde*/ && s.xPos+100 <= fjenderXpos+100 && s.yPos+100 >= fjenderYpos) {
      println("Fjende Ramt");
      fill(255, 0, 0);
    }
  }
}
