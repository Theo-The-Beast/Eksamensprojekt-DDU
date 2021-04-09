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

  void loadBilleder() {
    //Vores mand 
    mario = loadImage("Mario.png");
    
    //Ekstra materiale 
    skull = loadImage("skull.png");
    cloud = loadImage("cloud.png");
    tree = loadImage("tree.png");

    //Stier
    path = loadImage("path.png");
    path2 = loadImage("path2.png");
    path3 = loadImage("path3.png");
    
    //Bygninger
    hus = loadImage("Hus.png");
    hotel = loadImage("hotel.png");
    church = loadImage("church.png");
  }
}
