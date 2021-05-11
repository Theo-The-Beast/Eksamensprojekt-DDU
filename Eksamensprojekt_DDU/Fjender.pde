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
      image(pic.teacher,fjenderXpos,fjenderYpos);
      //rect(fjenderXpos, fjenderYpos, 100, 100);
    }
  }

  void bevaegFjender() {
  }

  void collideFjender() {
    if (visFjende) {
      if (s.xPos+100 >= fjenderXpos /*50 er bredde*/ && s.xPos+100 <= fjenderXpos+100 && s.yPos+100 >= fjenderYpos-79 && s.yPos+100 <= fjenderYpos+10) {
        println("Fjende Ramt");
        point -= 100;
        liv = liv - 1;
        visFjende = false;
      }
    }
  }

  void collideKillFjende() {
    if (visFjende) {
      if (s.xPos+100 >= fjenderXpos /*50 er bredde*/ && s.xPos+100 <= fjenderXpos+100 && s.yPos+100 >= fjenderYpos-100 && s.yPos+100 <= fjenderYpos-80) {
        println("Kill Fjende");
        visFjende = false;
        point += 100;
      }
    }
  }
}
