class Obstacles {

  //Stillads Forhindring
  int obstacleXPosStillads;
  int obstacleYPosStillads;

  //Køretøj Forhindringer
  int obstacleXPosBus;
  int obstacleYPosBus;
  int obstacleXPosBilRod;
  int obstacleYPosBilRod;
  int obstacleXPosBilLilla;
  int obstacleYPosBilLilla;
  int obstacleXPosBilPink;
  int obstacleYPosBilPink;
  int obstacleXPosBilShrek;
  int obstacleYPosBilShrek;

  // Hul Forhindringer
  int obstacleXPosHul1;
  int obstacleYPosHul1;
  int obstacleXPosHul2;
  int obstacleYPosHul2;
  int obstacleXPosHul3;
  int obstacleYPosHul3;
  int obstacleXPosHul4;
  int obstacleYPosHul4;

  void visObstacle() {
    //Stillads
    obstacleXPosStillads = 560 + b.screenMover;
    obstacleYPosStillads = 450;
    image(pic.stillads, obstacleXPosStillads, obstacleYPosStillads);

    //Bus
    obstacleXPosBus = 2000 + b.screenMover;
    obstacleYPosBus = 500;
    image(pic.bus, obstacleXPosBus, obstacleYPosBus);

    //Rød Bil
    obstacleXPosBilRod = 3500 +  b.screenMover;
    obstacleYPosBilRod = 620;
    image(pic.BilRod, obstacleXPosBilRod, obstacleYPosBilRod);

    // Lilla Bil
    obstacleXPosBilLilla = 5000 + b.screenMover;
    obstacleYPosBilLilla = 620;
    image(pic.BilLilla, obstacleXPosBilLilla, obstacleYPosBilLilla);

    //Pink Bil
    obstacleXPosBilPink = 6000 + b.screenMover;
    obstacleYPosBilPink = 620;
    image(pic.BilPink, obstacleXPosBilPink, obstacleYPosBilPink);

    //Shrek Bil
    obstacleXPosBilShrek = 7500 + b.screenMover;
    obstacleYPosBilShrek = 620;
    image(pic.BilShrek, obstacleXPosBilShrek, obstacleYPosBilShrek);

    //Hul i jorden 1.
    obstacleXPosHul1 = 1250 + b.screenMover ;
    obstacleYPosHul1 = 700;
    fill(0);
    rect(obstacleXPosHul1, obstacleYPosHul1, 150, 200);
    image(pic.HulSkilt,obstacleXPosHul1-50, obstacleYPosHul1-145);
    fill(255);

    //Hul i jorden 2.
    obstacleXPosHul2 = 3000 + b.screenMover ;
    obstacleYPosHul2 = 700;
    fill(0);
    rect(obstacleXPosHul2, obstacleYPosHul2, 150, 200);
    image(pic.HulSkilt,obstacleXPosHul2-50, obstacleYPosHul2-145);
    fill(255);

    //Hul i jorden 3.
    obstacleXPosHul3 = 4250 + b.screenMover ;
    obstacleYPosHul3 = 700;
    fill(0);
    rect(obstacleXPosHul3, obstacleYPosHul3, 150, 200);
   image(pic.HulSkilt,obstacleXPosHul3-50, obstacleYPosHul3-145);
    fill(255);

    //Hul i jorden 4.
    obstacleXPosHul4 = 6750 + b.screenMover ;
    obstacleYPosHul4 = 700;
    fill(0);
    rect(obstacleXPosHul4, obstacleYPosHul4, 150, 200);
    image(pic.HulSkilt,obstacleXPosHul4-50, obstacleYPosHul4-145);
    fill(255);
  }

  void collideObstacle() {
    //Stillads
    if (s.xPos+100 >= obstacleXPosStillads && s.xPos+100 <= obstacleXPosStillads+430 && s.yPos+200 >= obstacleYPosStillads && s.yPos+190 <= obstacleYPosStillads) {
      tyndekraftStartPos = obstacleYPosStillads-200;
    } else
      //Bus
      if (s.xPos+100 >= obstacleXPosBus+50 && s.xPos+100 <= obstacleXPosBus+400 && s.yPos+160 >= obstacleYPosBus && s.yPos+150 <= obstacleYPosBus) {
        tyndekraftStartPos = obstacleYPosBus-160;
      } else
        //Rød Bil
        if (s.xPos+100 >= obstacleXPosBilRod && s.xPos+100 <= obstacleXPosBilRod+200 && s.yPos+200 >= obstacleYPosBilRod && s.yPos+190 <= obstacleYPosBilRod) {
          tyndekraftStartPos = obstacleYPosBilRod-200;
        } else 
        //Lilla Bil
        if (s.xPos+100 >= obstacleXPosBilLilla && s.xPos+100 <= obstacleXPosBilLilla+200 && s.yPos+200 >= obstacleYPosBilLilla && s.yPos+190 <= obstacleYPosBilLilla) {
          tyndekraftStartPos = obstacleYPosBilLilla-200;
        } else 
        //Pink Bil
        if (s.xPos+100 >= obstacleXPosBilPink && s.xPos+100 <= obstacleXPosBilPink+200 && s.yPos+200 >= obstacleYPosBilPink && s.yPos+190 <= obstacleYPosBilPink) {
          tyndekraftStartPos = obstacleYPosBilPink-200;
        } else
          //Shrek Bil
          if (s.xPos+100 >= obstacleXPosBilShrek && s.xPos+100 <= obstacleXPosBilShrek+200 && s.yPos+200 >= obstacleYPosBilShrek && s.yPos+190 <= obstacleYPosBilShrek) {
            tyndekraftStartPos = obstacleYPosBilShrek-200;
          } else {
            //Nulstiller tyndekraft.
            tyndekraftStartPos = 550;
          }

    //Ikke igennem Bus
    if (s.xPos >= obstacleXPosBus-70 && s.xPos <= obstacleXPosBus+150 && s.yPos+150 >= obstacleYPosBus && s.yPos-100 <= obstacleYPosBus) {
      s.xPos = s.xPos - 10;
    }
    if (s.xPos >= obstacleXPosBus+151 && s.xPos <= obstacleXPosBus+300 && s.yPos+150 >= obstacleYPosBus && s.yPos-100 <= obstacleYPosBus) {
      s.xPos = s.xPos + 10;
    }

    //Ikke igennem Rød Bil
    if (s.xPos+100 >= obstacleXPosBilRod && s.xPos+100 <= obstacleXPosBilRod+100 && s.yPos+190 >= obstacleYPosBilRod && s.yPos+40 <= obstacleYPosBilRod) {
      s.xPos = s.xPos - 10;
    }
    if (s.xPos+100 >= obstacleXPosBilRod+101 && s.xPos+100 <= obstacleXPosBilRod+200 && s.yPos+190 >= obstacleYPosBilRod && s.yPos+40 <= obstacleYPosBilRod) {
      s.xPos = s.xPos + 10;
    }

    //Ikke igennem Lilla Bil
    if (s.xPos+100 >= obstacleXPosBilLilla && s.xPos+100 <= obstacleXPosBilLilla+100 && s.yPos+190 >= obstacleYPosBilLilla && s.yPos+40 <= obstacleYPosBilLilla) {
      s.xPos = s.xPos - 10;
    }
    if (s.xPos+100 >= obstacleXPosBilLilla+101 && s.xPos+100 <= obstacleXPosBilLilla+200 && s.yPos+190 >= obstacleYPosBilLilla && s.yPos+40 <= obstacleYPosBilLilla) {
      s.xPos = s.xPos + 10;
    }

    //Ikke igennem Pink Bil
    if (s.xPos+100 >= obstacleXPosBilPink && s.xPos+100 <= obstacleXPosBilPink+100 && s.yPos+190 >= obstacleYPosBilPink && s.yPos+40 <= obstacleYPosBilPink) {
      s.xPos = s.xPos - 10;
    }
    if (s.xPos+100 >= obstacleXPosBilPink+101 && s.xPos+100 <= obstacleXPosBilPink+200 && s.yPos+190 >= obstacleYPosBilPink && s.yPos+40 <= obstacleYPosBilPink) {
      s.xPos = s.xPos + 10;
    }

    //Ikke igennem Shrek Bil
    if (s.xPos+100 >= obstacleXPosBilShrek && s.xPos+100 <= obstacleXPosBilShrek+100 && s.yPos+190 >= obstacleYPosBilShrek && s.yPos+40 <= obstacleYPosBilShrek) {
      s.xPos = s.xPos - 10;
    }
    if (s.xPos+100 >= obstacleXPosBilShrek+101 && s.xPos+100 <= obstacleXPosBilShrek+200 && s.yPos+190 >= obstacleYPosBilShrek && s.yPos+40 <= obstacleYPosBilShrek) {
      s.xPos = s.xPos + 10;
    }

    //Huller
    //Hul 1
    if (s.xPos+100 >= obstacleXPosHul1 && s.xPos+100 <= obstacleXPosHul1+150) {
      tyndekraftStartPos = height;
    }
    if (s.xPos+100 > obstacleXPosHul1+140 && s.xPos+100 <= obstacleXPosHul1+160 && s.yPos > 650-100) {
      s.xPos = s.xPos - 10;
    }
    if (s.xPos+100 > obstacleXPosHul1-10 && s.xPos+100 <= obstacleXPosHul1+10 && s.yPos > 650-100) {
      s.xPos = s.xPos + 10;
    }

    //Hul 2
    if (s.xPos+100 >= obstacleXPosHul2 && s.xPos+100 <= obstacleXPosHul2+150) {
      tyndekraftStartPos = height;
    }
    if (s.xPos+100 > obstacleXPosHul2+140 && s.xPos+100 <= obstacleXPosHul2+160 && s.yPos > 650-100) {
      s.xPos = s.xPos - 10;
    }
    if (s.xPos+100 > obstacleXPosHul2-10 && s.xPos+100 <= obstacleXPosHul2+10 && s.yPos > 650-100) {
      s.xPos = s.xPos + 10;
    }

    //Hul 3
    if (s.xPos+100 >= obstacleXPosHul3 && s.xPos+100 <= obstacleXPosHul3+150) {
      tyndekraftStartPos = height;
    }
    if (s.xPos+100 > obstacleXPosHul3+140 && s.xPos+100 <= obstacleXPosHul3+160 && s.yPos > 650-100) {
      s.xPos = s.xPos - 10;
    }
    if (s.xPos+100 > obstacleXPosHul3-10 && s.xPos+100 <= obstacleXPosHul3+10 && s.yPos > 650-100) {
      s.xPos = s.xPos + 10;
    }

    //Hul 4
    if (s.xPos+100 >= obstacleXPosHul4 && s.xPos+100 <= obstacleXPosHul4+150) {
      tyndekraftStartPos = height;
    }
    if (s.xPos+100 > obstacleXPosHul4+140 && s.xPos+100 <= obstacleXPosHul4+160 && s.yPos > 650-100) {
      s.xPos = s.xPos - 10;
    }
    if (s.xPos+100 > obstacleXPosHul4-10 && s.xPos+100 <= obstacleXPosHul4+10 && s.yPos > 650-100) { 
      s.xPos = s.xPos + 10;
    }
    
    //Slutter spillet når man rammer bunden af hullet.
    if (s.yPos+50 >= height){
      scene = 6;
    }
  }
}
