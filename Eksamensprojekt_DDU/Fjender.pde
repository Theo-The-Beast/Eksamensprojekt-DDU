class Fjender {
  int fjenderXpos;
  int fjenderYpos;

  boolean visFjende = true;
  boolean collideFjende = true;
  boolean mistLivBool = true;

  void tegnFjender() {
    fjenderXpos = 1600 + b.screenMover;
    fjenderYpos = 650;
    if (visFjende) {
      rect(fjenderXpos, fjenderYpos, 100, 100);
    }
  }

  void bevaegFjender() {
  }

  void collideFjender() {
    if (visFjende) {
      if (s.xPos+100 >= fjenderXpos /*50 er bredde*/ && s.xPos+100 <= fjenderXpos+100 && s.yPos+100 >= fjenderYpos) {
        println("Fjende Ramt");
        liv = liv - 1;
        visFjende = false;
      }
    }
  }
}
