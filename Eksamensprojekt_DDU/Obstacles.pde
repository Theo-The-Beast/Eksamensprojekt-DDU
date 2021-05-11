class Obstacles {
  int obstacleXPosStillads;
  int obstacleYPosStillads;
  int obstacleXPosBus;
  int obstacleYPosBus;

  void visObstacle() {
    //Stillads
    obstacleXPosStillads = 560 + b.screenMover;
    obstacleYPosStillads = 450;
    image(pic.stillads, obstacleXPosStillads, obstacleYPosStillads);
    
    //Bus
    obstacleXPosBus = 1100 + b.screenMover;
    obstacleYPosBus = 500;
    image(pic.bus, obstacleXPosBus, obstacleYPosBus);
  }

  void collideObstacle() {
    //Stillads
    if (s.xPos+100 >= obstacleXPosStillads && s.xPos+100 <= obstacleXPosStillads+430 && s.yPos+200 >= obstacleYPosStillads && s.yPos+190 <= obstacleYPosStillads) {
      tyndekraftStartPos = obstacleYPosStillads-200;
      //println("Obstacle ramt");
    } else {
      tyndekraftStartPos = 550;
    }
    
    //Bus
    //Oppe på Bus
    if (s.xPos+100 >= obstacleXPosBus+50 && s.xPos+100 <= obstacleXPosBus+400 && s.yPos+160 >= obstacleYPosBus && s.yPos+150 <= obstacleYPosBus) {
      tyndekraftStartPos = obstacleYPosBus-160;
      println("Stå på bus");
    } else {
      tyndekraftStartPos = 550;
    }
    
    //Ikke igennem Bus
    if (s.xPos >= obstacleXPosBus){
      b.personRykkerHojer = true;
      s.xSpeed = 0;
      println();
    }
  }
}
