class Obstacles {
  int obstacleXPos;
  int obstacleYPos;
  int obstacleWidth = 400;
  int ovstacleHeight = 50;


  void visObstacle() {
    obstacleXPos = 600 + b.screenMover;
    obstacleYPos = 450;
    rect(obstacleXPos, obstacleYPos, obstacleWidth, ovstacleHeight);
  }

  void collideObstacle() {                                                  /* 200 er billede højde*/        /* 190 er kalibrering */
    if (s.xPos+100 >= obstacleXPos && s.xPos+100 <= obstacleXPos+obstacleWidth && s.yPos+200 >= obstacleYPos && s.yPos+190 <= obstacleYPos) {
      tyndekraftStartPos = obstacleYPos-200;
      //println("Obstacle ramt");
    } else {
      tyndekraftStartPos = 550;
    }
  }
}
