class Background {

  boolean baggrundRykker = true;
  boolean stregerSetup = true;
  boolean personRykkerHojer = true;
  boolean personRykkerVenstre = true;

  int xSpeed = -5;
  int stribeX;

  void tegnbaggrund() {
    //BLÅ HIMMEL!!!
    for ( int i = 0; i < width; i++) {
      stroke(map(i, 50, width, 0, 200), 0, 255-map(i, 0, width, 0, 0));
      line(0, i, width, i);
    }
    //JORD
    noStroke();
    rect(0, 700, 1600, 200);

    //Græs
    fill(0, 255, 70);
    rect(0, 550, 1600, 150);

    //Fortov
    fill(150, 150, 150);
    rect(0, 700, 1600, 100);
    fill(255);

    //Hvide streger
    if (baggrundRykker) {
      //Ændre xSpeed når boolean bliver true eller false
      if (personRykkerHojer) {
        stribeX = stribeX + 0;
      } else {
        stribeX = stribeX + xSpeed;
      }

      //Ændre xSpeed når boolean bliver true eller false
      if (personRykkerVenstre) {
        stribeX = stribeX + 0;
      } else {
        stribeX = stribeX - xSpeed;
      }

      //Streger på vejen
      for (int i = 0; i < 12; i++) {
        //Vejstriber
        rect(stribeX + i * 150 - 1650, 740, 100, 20);
      }
      for (int i = 0; i < 12; i++) {
        //Vejstriber
        rect(stribeX + i * 150, 740, 100, 20);
      }
      for (int i = 0; i < 12; i++) {
        //Vejstriber
        rect(stribeX + i * 150 + 1650, 740, 100, 20);
      }
      
      if (stribeX < -1650){
        stribeX = 0;
      }
    }
        //Ekstra pynt
    image(pic.skull, 430 + stribeX, 820, 50, 50);
    image(pic.cloud, 1030 + stribeX, 250);
    image(pic.cloud, 30 + stribeX, 160);
    image(pic.cloud, 1350 + stribeX, 30);
    //Hus
    image(pic.path, 1020 + stribeX, 473);
    image(pic.hus, 1030 + stribeX, 350);
    //Hotel
    image(pic.path2, 578 + stribeX, 443);
    image(pic.hotel, 510 + stribeX, 71);
    //Kirke
    image(pic.path3, 145 + stribeX, 413);
    image(pic.church, 50 + stribeX, 101);
  }

}
