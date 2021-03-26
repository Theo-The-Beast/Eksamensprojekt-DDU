class Spiller {
  int xPos;
  int yPos;
  int w;
  int h;
  int xSpeed;
  int ySpeed;

  boolean left = false;
  boolean right = false;

  Spiller(int tempX, int tempY, int tempW, int tempH) {
    xPos = tempX;
    yPos = tempY;
    w = tempW;
    h = tempH;
    xSpeed = 0;
    ySpeed = 0;
  }

  void tegnSpiller() {
    fill(255);
    //rect(xPos+73, yPos+35, 55, 165);
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
      xSpeed = 0;
    } else {
      b.personRykkerHojer = true;
    }
    //Angiver hvornår baggrund skal bevæge sig.
    if (xPos < 150) {
      b.baggrundRykker = true;
      b.personRykkerVenstre = false;
      xSpeed = 0;
    } else {
      b.personRykkerVenstre = true;
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
