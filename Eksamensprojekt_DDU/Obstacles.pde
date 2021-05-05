class Obstacles {
  int obstacleYPos = 450;


  void visObstacle() {
    rect(600, obstacleYPos, 400, 50);
  }

  void collideObstacle() {
    if (s.xPos+100 >= 600 && s.xPos+100 <= 1000 && s.yPos+200 >= obstacleYPos && s.yPos+190 <= obstacleYPos) {
      tyndekraftStartPos = obstacleYPos-200;
      //println("Obstacle ramt");
    } else {
      tyndekraftStartPos = 550;
    }
  }
}
