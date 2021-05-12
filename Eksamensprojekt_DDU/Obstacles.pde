class Obstacles {
  int obstacleXPosStillads;
  int obstacleYPosStillads;
  int obstacleXPosBus;
  int obstacleYPosBus;
  int obstacleXPosBilRod;
  int obstacleYPosBilRod;

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
  }

  void collideObstacle() {
    //Stillads
    if (s.xPos+100 >= obstacleXPosStillads && s.xPos+100 <= obstacleXPosStillads+430 && s.yPos+200 >= obstacleYPosStillads && s.yPos+190 <= obstacleYPosStillads) {
      tyndekraftStartPos = obstacleYPosStillads-200;
      println("Obstacle ramt");
    } else
      //Bus
      if (s.xPos+100 >= obstacleXPosBus+50 && s.xPos+100 <= obstacleXPosBus+400 && s.yPos+160 >= obstacleYPosBus && s.yPos+150 <= obstacleYPosBus) {
        tyndekraftStartPos = obstacleYPosBus-160;
        println("Stå på bus");
      } else
        //Rød Bil
        if (s.xPos+100 >= obstacleXPosBilRod && s.xPos+100 <= obstacleXPosBilRod+200 && s.yPos+200 >= obstacleYPosBilRod && s.yPos+190 <= obstacleYPosBilRod) {
          tyndekraftStartPos = obstacleYPosBilRod-200;
          println("Rod bil rammes nu.");
        } else {
          //Nulstiller tyndekraft.
          tyndekraftStartPos = 550;
        }

    //Ikke igennem Bus
    if (s.xPos >= obstacleXPosBus-70 && s.xPos <= obstacleXPosBus+150 && s.yPos+150 >= obstacleYPosBus && s.yPos-100 <= obstacleYPosBus) {
      s.xPos = s.xPos - 10;
      println("Ikke igennem bus køre nu. Venstre side.");
    }
    if (s.xPos >= obstacleXPosBus+151 && s.xPos <= obstacleXPosBus+300 && s.yPos+150 >= obstacleYPosBus && s.yPos-100 <= obstacleYPosBus) {
      s.xPos = s.xPos + 10;
      println("Ikke igennem bus køre nu. Højre side.");
    }
    
    //Ikke igennem Rød Bil
    if (s.xPos+100 >= obstacleXPosBilRod && s.xPos+100 <= obstacleXPosBilRod+100 && s.yPos+190 >= obstacleYPosBilRod && s.yPos+40 <= obstacleYPosBilRod){
      s.xPos = s.xPos - 10;
      println("Ikke igennem Rød Bil køre nu. Venstre side.");
    }
    if (s.xPos+100 >= obstacleXPosBilRod+101 && s.xPos+100 <= obstacleXPosBilRod+200 && s.yPos+190 >= obstacleYPosBilRod && s.yPos+40 <= obstacleYPosBilRod){
      s.xPos = s.xPos + 10;
      println("Ikke igennem Rød Bil køre nu. Højre side.");
    }
    
  }
}
