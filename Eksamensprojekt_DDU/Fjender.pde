class Fjender {
  int fjenderXpos1;
  int fjenderYpos1;
  int fjenderXpos2;
  int fjenderYpos2;
  int fjenderXpos3;
  int fjenderYpos3;
  int fjenderXpos4;
  int fjenderYpos4;
  int fjenderXpos5;
  int fjenderYpos5;

  boolean visFjende = true;
  boolean visFjende2 = true;
  boolean visFjende3 = true;
  boolean visFjende4 = true;
  boolean visFjende5 = true;

  boolean mistLivBool = true;

  void tegnFjender() {

    if (liv == 0) {
      scene = 3;
    }

    // Fjende 1
    fjenderXpos1 = 1600 + b.screenMover;
    fjenderYpos1 = 650;
    if (visFjende) {
      image(pic.teacher, fjenderXpos1, fjenderYpos1);
    }

    // Fjende 2
    fjenderXpos2 = 3610 + b.screenMover;
    fjenderYpos2 = 525;
    if (visFjende2) {
      image(pic.teacher, fjenderXpos2, fjenderYpos2);
    }

    // Fjende 3
    fjenderXpos3 = 5810 + b.screenMover;
    fjenderYpos3 = 650;
    if (visFjende3) {
      image(pic.teacher, fjenderXpos3, fjenderYpos3);
    }

    // Fjende 4
    fjenderXpos4 = 7110 + b.screenMover;
    fjenderYpos4 = 650;
    if (visFjende4) {
      image(pic.teacher, fjenderXpos4, fjenderYpos4);
    }

    // Fjende 5
    fjenderXpos5 = 8100 + b.screenMover;
    fjenderYpos5 = 650;
    if (visFjende5) {
      image(pic.teacher, fjenderXpos5, fjenderYpos5);
    }
  }

  void collideFjender() {
    // COLLIDE FJENDE 1
    if (visFjende) {
      if (s.xPos+100 >= fjenderXpos1 /*50 er bredde*/ && s.xPos+100 <= fjenderXpos1+100 && s.yPos+100 >= fjenderYpos1-79 && s.yPos+100 <= fjenderYpos1+10) {
        point -= 100;
        liv = liv - 1;
        visFjende = false;
      }
    }

    // COLLIDE FJENDE 2
    if (visFjende2) {
      if (s.xPos+100 >= fjenderXpos2 /*50 er bredde*/ && s.xPos+100 <= fjenderXpos2+100 && s.yPos+100 >= fjenderYpos2-79 && s.yPos+100 <= fjenderYpos2+10) {
        point -= 100;
        liv = liv - 1;
        visFjende2 = false;
      }
    }

    // COLLIDE FJENDE 3
    if (visFjende3) {
      if (s.xPos+100 >= fjenderXpos3 /*50 er bredde*/ && s.xPos+100 <= fjenderXpos3+100 && s.yPos+100 >= fjenderYpos3-79 && s.yPos+100 <= fjenderYpos3+10) {
        point -= 100;
        liv = liv - 1;
        visFjende3 = false;
      }
    }

    // COLLIDE FJENDE 4
    if (visFjende4) {
      if (s.xPos+100 >= fjenderXpos4 /*50 er bredde*/ && s.xPos+100 <= fjenderXpos4+100 && s.yPos+100 >= fjenderYpos4-79 && s.yPos+100 <= fjenderYpos4+10) {
        point -= 100;
        liv = liv - 1;
        visFjende4 = false;
      }
    }

    // COLLIDE FJENDE 5
    if (visFjende5) {
      if (s.xPos+100 >= fjenderXpos5 /*50 er bredde*/ && s.xPos+100 <= fjenderXpos5+100 && s.yPos+100 >= fjenderYpos5-79 && s.yPos+100 <= fjenderYpos5+10) {
        point -= 100;
        liv = liv - 1;
        visFjende5 = false;
      }
    }
  }

  void collideKillFjende() {
    // KILL FJENDE 1
    if (visFjende) {
      if (s.xPos+100 >= fjenderXpos1 /*50 er bredde*/ && s.xPos+100 <= fjenderXpos1+100 && s.yPos+100 >= fjenderYpos1-100 && s.yPos+100 <= fjenderYpos1-80) {
        visFjende = false;
        point += 100;
      }
    }

    // KILL FJENDE 2
    if (visFjende2) {
      if (s.xPos+100 >= fjenderXpos2 /*50 er bredde*/ && s.xPos+100 <= fjenderXpos2+100 && s.yPos+100 >= fjenderYpos2-100 && s.yPos+100 <= fjenderYpos2-80) {
        visFjende2 = false;
        point += 100;
      }
    }

    // KILL FJENDE 2
    if (visFjende3) {
      if (s.xPos+100 >= fjenderXpos3/*50 er bredde*/ && s.xPos+100 <= fjenderXpos3+100 && s.yPos+100 >= fjenderYpos3-100 && s.yPos+100 <= fjenderYpos3-80) {
        visFjende3 = false;
        point += 100;
      }
    }

    // KILL FJENDE 4
    if (visFjende4) {
      if (s.xPos+100 >= fjenderXpos4/*50 er bredde*/ && s.xPos+100 <= fjenderXpos4+100 && s.yPos+100 >= fjenderYpos4-100 && s.yPos+100 <= fjenderYpos4-80) {
        visFjende4 = false;
        point += 100;
      }
    }

    // KILL FJENDE 5
    if (visFjende5) {
      if (s.xPos+100 >= fjenderXpos5/*50 er bredde*/ && s.xPos+100 <= fjenderXpos5+100 && s.yPos+100 >= fjenderYpos5-100 && s.yPos+100 <= fjenderYpos5-80) {
        visFjende5 = false;
        point += 100;
      }
    }
  }
}
