class Billeder {

  PImage mario;
  PImage skull;  
  PImage cloud;
  PImage hus;
  PImage hotel;
  PImage church;
  PImage path;
  PImage path2;
  PImage path3;
  PImage tree;
  PImage teacher;
  PImage lektier;
  PImage stillads;
  PImage bus;
  PImage WB;
  PImage WinnerMario;
  PImage TristeMario;
  PImage GladAnders;
  PImage GladJohn;
   PImage SurAnders;
  PImage SurJohn;
  PImage liv;

  void loadBilleder() {
    //Vores mand 
    mario = loadImage("Mario.png");
    WinnerMario = loadImage("WinnerMario.png");
    TristeMario = loadImage("TristeMario.png");

    //Ekstra materiale 
    skull = loadImage("skull.png");
    cloud = loadImage("cloud.png");
    tree = loadImage("tree.png");
    WB = loadImage("winBackground.png");
    GladAnders = loadImage("GladAnders.png");
    GladJohn = loadImage("GladJohn.png");
    SurAnders = loadImage("SurAnders.png");
    SurJohn = loadImage("SurJohn.png");
    liv = loadImage("liv.png");
    
    //Stier
    path = loadImage("path.png");
    path2 = loadImage("path2.png");
    path3 = loadImage("path3.png");

    //Bygninger
    hus = loadImage("Hus.png");
    hotel = loadImage("hotel.png");
    church = loadImage("church.png");

    //Fjende
    teacher = loadImage("Teacher.png");

    //Collectibles
    lektier = loadImage("Lektier.png");
    
    //Obstacles
    stillads = loadImage("stillads.png");
    bus = loadImage("bus.png");
  }
}
