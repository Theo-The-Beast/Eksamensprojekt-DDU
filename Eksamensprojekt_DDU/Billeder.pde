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
  PImage GladAnders;
  PImage GladJohn;

  void loadBilleder() {
    //Vores mand 
    mario = loadImage("Mario.png");
    WinnerMario = loadImage("WinnerMario.png");

    //Ekstra materiale 
    skull = loadImage("skull.png");
    cloud = loadImage("cloud.png");
    tree = loadImage("tree.png");
    WB = loadImage("winBackground.png");
    GladAnders = loadImage("GladAnders.png");
    GladJohn = loadImage("GladJohn.png");
    
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
