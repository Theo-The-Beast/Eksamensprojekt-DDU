class Background {

  boolean baggrundRykker = true;
  boolean stregerSetup = true;
  boolean personRykkerHojer = true;
  boolean personRykkerVenstre = true;

  int xSpeed = -5;
  int stribeX;

  int kirkeX = 50;
  int husX = 1030;
  int hotelX = 510;
  int treeX = 1850;
  int sky1X = 30;
  int sky2X = 1030;
  int sky3X = 1350;



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

      if (stribeX < -1650) {
        stribeX = 0;
      }
    }
    //Ekstra pynt
    /*image(pic.skull, 430 + stribeX, 820, 50, 50);
     image(pic.cloud, 1030, 250);
     image(pic.cloud, 30 + stribeX, 160);
     image(pic.cloud, 1350 + stribeX, 30);
     //Hus
     image(pic.path, 1020 + stribeX, 473);
     image(pic.hus, 1030 + stribeX, 350);
     //Hotel
     image(pic.path2, 578 + stribeX, 443);
     image(pic.hotel, 510 + stribeX, 71);*/

    if (baggrundRykker) {
      //Ændre xSpeed når boolean bliver true eller false
      if (!personRykkerHojer) {
        kirkeX = kirkeX + xSpeed;
        husX = husX + xSpeed;
        hotelX = hotelX + xSpeed;
        treeX = treeX + xSpeed;
        sky1X = sky1X + xSpeed;
        sky2X = sky2X + xSpeed;
        sky3X = sky3X + xSpeed;
      }
    }
    if (!personRykkerVenstre) {
      kirkeX = kirkeX - xSpeed;
      husX = husX - xSpeed;
      hotelX = hotelX - xSpeed;
      treeX = treeX - xSpeed;
      sky1X = sky1X - xSpeed;
      sky2X = sky2X - xSpeed;
      sky3X = sky3X - xSpeed;
    }
    //Kirke
    if (kirkeX <= -550) {
      kirkeX = width+30;
    }

    if (kirkeX >= width+32) {
      kirkeX = -445;
    }

    //Hus
    if (husX <= -550) {
      husX = width+30;
    }

    if (husX >= width+32) {
      husX = -445;
    }

    //Hotel
    if (hotelX <= -550) {
      hotelX = width+30;
    }

    if (hotelX >= width+32) {
      hotelX = -445;
    }

    //Tree
    if (treeX <= -550) {
      treeX = width+30;
    }

    if (treeX >= width+32) {
      treeX = -445;
    }

    //skyer
    //sky1
    if (sky1X <= -550) {
      sky1X = width+30;
    }

    if (sky1X >= width+32) {
      sky1X = -445;
    }
    
    if (sky2X <= -550) {
      sky2X = width+30;
    }

    if (sky2X >= width+32) {
      sky2X = -445;
    }
    
    if (sky3X <= -550) {
      sky3X = width+30;
    }

    if (sky3X >= width+32) {
      sky3X = -445;
    }

    //Kirke Drawing
    image(pic.path3, kirkeX + 95, 413);
    image(pic.church, kirkeX, 101);

    //Hus Drawing
    image(pic.path, husX -10, 473);
    image(pic.hus, husX, 350);

    //Hotel Drawing
    image(pic.path2, hotelX + 68, 443);
    image(pic.hotel, hotelX, 71);

    //Tree Drawing
    image(pic.tree, treeX, 130);
    
    //Sky1 Drawing
    image(pic.cloud, sky1X, 160);
    
    //Sky2 Drawing
    image(pic.cloud, sky2X, 250);
    
    //Sky3 Drawing
    image(pic.cloud, sky3X, 30);
  }
}
