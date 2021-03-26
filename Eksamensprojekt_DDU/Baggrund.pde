class Background {

  PImage skull;  
  PImage cloud;
  PImage hus;
  PImage hotel;
  PImage church;
  PImage path;
  PImage path2;
  PImage path3;

  boolean baggrundRykker = true;
  boolean stregerSetup = true;
  boolean personRykker = true;

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
      if (personRykker) {
        stribeX = stribeX + 0;
      } else {
        stribeX = stribeX + xSpeed;
      }
      for (int i = 0; i < 12; i++) {
        rect(stribeX+i*150, 740, 100, 20);
      }
      for (int i = 0; i < 12; i++) {
        rect(stribeX + i * 150 + 1650, 740, 100, 20);
      }     
      if (stribeX < -1650) stribeX = 0;
    }

    //Ekstra pynt
    image(skull, 430, 820, 50, 50);
    image(cloud, 1030, 300);
    image(cloud, 30, 160);
    image(cloud, 1350, 30);
    //Hus1
    image(path, 1020, 473);
    image(hus, 1030, 350);
    //Hus2
    image(path2, 578, 443);
    image(hotel, 510, 71);
    //Hus
    image(path3, 145, 413);
    image(church, 50, 101);
  }
}
