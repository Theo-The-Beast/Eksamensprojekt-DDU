class Menu {

  void display() {
    //knapper
    rect(675, 350, 250, 100);
    rect(675, 500, 250, 100);
    rect(675, 650, 250, 100);

    //text
    textSize(32);
    fill(0);
    text("Start", 765, 411);
    text("Rules", 765, 561);
    text("Exit", 765, 711);
    textSize(64);
    fill(240, 240, 196);
    text("Desert Warfare", 575, 200);
    textSize(32);  
    fill(255);
  }

  void menuKlik() {
    //Start spil
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 350 && mouseY <= 450) {
      scene = 1;
    }
    //Regler
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 500 && mouseY <= 600) {
      scene = 2;
    }
    //Quit
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 650 && mouseY <= 750) {
      exit();
    }
  }

  void tilbageKnap() {
    //Home/pause
    if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
      scene=0;
    }
  }

  void regler() {
    textAlign(CENTER);
    textSize(64);
    text("Velkommen til Desert Warfare\n", 800, 150);
    textSize(32);
    text("Reglerne er rimelig simple.\n Spillet går ud på at ramme bolden med din paddel og \n slå den tilbage mod din modstander. \n Dette bliver ved indtil du, eller computeren misser, \n hvor du så enten går videre til næste level eller taber. \n\n\n\n Styring:\n Ryk op: Pil op\n Ryk ned: Pil ned ", 800, 250);
    textAlign(LEFT);

    //Tilbage knap
    rect(20, 20, 30, 30);
    fill(0);
    text("<", 20, 44);
    fill(255);
  }
}
