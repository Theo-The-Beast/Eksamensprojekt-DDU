class Collectibles {

  int collectXpos1;
  int collectYpos1;
  int collectXpos2;
  int collectYpos2;
  int collectXpos3;
  int collectYpos3;

  boolean visCollect1 = true;
  boolean collectFaaet1 = false;
  boolean visCollect2 = true;
  boolean collectFaaet2 = false;
  boolean visCollect3 = true;
  boolean collectFaaet3 = false;

  void visLektier() {
    //Collect 1
    collectXpos1 = b.screenMover + 925;
    collectYpos1 = 400;
    if (visCollect1) {
      image(pic.lektier, collectXpos1-50, collectYpos1-50);
    }

    //Collect 2
    collectXpos2 = b.screenMover + 4010;
    collectYpos2 = 230;
    if (visCollect2) {
      image(pic.lektier, collectXpos2-50, collectYpos2-50);
    }

    //Collect 3
    collectXpos3 = b.screenMover + 8020;
    collectYpos3 = 300;
    if (visCollect3) {
      image(pic.lektier, collectXpos3-50, collectYpos3-50);
    }
  }

  void collectColide() {
    //Collect 1
    if (s.xPos+100 >= collectXpos1-50 && s.xPos+100 <= collectXpos1+50 && s.yPos >= collectYpos1-200 && s.yPos <= collectYpos1-140 && collectFaaet1 == false) {
      collectFaaet1 = true;
      if (collectFaaet1) {
        samletCollect += 1;
        point += 200;
      }
      visCollect1 = false;
    }

    //Collect 2
    if (s.xPos+100 >= collectXpos2-50 && s.xPos+100 <= collectXpos2+50 && s.yPos >= collectYpos2-200 && s.yPos <= collectYpos2-50 && collectFaaet2 == false) {
      collectFaaet2 = true;
      if (collectFaaet2) {
        samletCollect += 1;
        point += 200;
      }
      visCollect2 = false;
    }

    //Collect 3
    if (s.xPos+100 >= collectXpos3-50 && s.xPos+100 <= collectXpos3+50 && s.yPos >= collectYpos3-200 && s.yPos <= collectYpos3-50 && collectFaaet3 == false) {
      collectFaaet3 = true;
      if (collectFaaet3) {
        samletCollect += 1;
        point += 200;
      }
      visCollect3 = false;
    }
  }
}
