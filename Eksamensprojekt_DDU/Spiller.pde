class Spiller {
  int xPos;
  float yPos;
  int startXPos;
  float startYPos;
  float hop = 1.0;

  boolean left = false;
  boolean right = false;
  boolean hoppe = false;

  Spiller(int tempX, int tempY) {
    xPos = tempX;
    yPos = tempY;
    startXPos = tempX;
    startYPos = tempY;
  }

  void tegnSpiller() {
    fill(255);
    //rect(xPos+73, yPos+35, 55, 165);
    yPos = yPos * hop + tyndekraft;
    image(pic.mario, xPos, yPos+5, 200, 200);
  }

  void bevagSpiller() {
    if (left) xPos=xPos-10;
    else xPos = xPos + 0;
    if (right) xPos=xPos+10;
    else xPos = xPos + 0;

    //Angiver hvornår baggrund skal bevæge sig.
    if (xPos > 1250) {
      b.baggrundRykker = true;
      b.personRykkerHojer = false;
    } else {
      b.personRykkerHojer = true;
    }

    //Angiver hvornår baggrund skal bevæge sig.
    if (xPos < 150 && b.screenMover < 0) {
      b.baggrundRykker = true;
      b.personRykkerVenstre = false;
    } else {
      b.personRykkerVenstre = true;
    }

    //Ikke gå længere ved slut
    if (xPos > 1250 && b.screenMover < -7500) {
      b.baggrundRykker = false;
      b.personRykkerHojer = false;
    }
  }

  void maksHopHoejde() {
    if (yPos <= 150) {
      hoppe = false;
    }
    if (hoppe) {
      hop = 0.96;
    } else {
      hop = 1.0;
    }
  }

  void spillerHopPress() {
    if (keyCode == UP && hoppe == false && yPos >= tyndekraftStartPos || keyCode == 32 && hoppe == false && yPos >= tyndekraftStartPos) {
      println("Hoppe Aktiv");
      hoppe = true;
    }
  }

  void spillerHopRelease() {
    if (keyCode == UP && hoppe == true || keyCode == 32 && hoppe == true) {
      println("Hoppe ikke Aktiv");
      hoppe = false;
    }
  }

  void bevagSpillerPress() {
    if (keyCode == LEFT) {
      left = true;
    } 
    if (keyCode == RIGHT) {
      right = true;
    }
  }

  void bevagSpillerRelease() {
    if (keyCode == LEFT) {
      left = false;
    } 
    if (keyCode == RIGHT) {
      right = false;
    }
  }
}
