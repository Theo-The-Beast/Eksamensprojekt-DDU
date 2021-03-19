class Spiller {
  int xPos;
  int yPos;
  int xSpeed;
  int ySpeed;

  boolean left = false;
  boolean right = false;

  void tegnSpiller() {
    rect(xPos, yPos, 20, 20);
  }

  void bevagSpiller() {
    if (left) xPos=xPos-5;
    else xPos = xPos + 0;   if (right) xPos=xPos+5;
    else xPos = xPos + 0;
  }

  void bevagSpillerPress() {
    if (keyPressed && keyCode == LEFT) {
      left = true;
    } 
    if (keyPressed && keyCode == RIGHT) {
      right = true;
    }
  }

  void bevagSpillerRelease() {
    if (keyPressed && keyCode == LEFT) {
      left = false;
    } 
    if (keyPressed && keyCode == RIGHT) {
      right = false;
    }
  }
}
