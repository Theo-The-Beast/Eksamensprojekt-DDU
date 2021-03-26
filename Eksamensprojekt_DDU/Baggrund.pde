class Background{
  
PImage skull;  
PImage hus;  
PImage path;
PImage path2;
PImage path3;
PImage hotel;

int xSpeed = -5;
  int stribeX;
  
void tegnbaggrund(){
  //BLÅ HIMMEL!!!
  for ( int i = 0; i < width; i++) {
    stroke(map(i, 50, width, 0, 200), 0, 255-map(i, 0, width, 0, 0));
    line(0, i, width, i);
}
//JORD
noStroke();
rect(0,700,1600,200);

//Græs
fill(0,255,70);
rect(0,550,1600,150);

//Fortov
fill(150,150,150);
rect(0,700,1600,100);
fill(255);
//Hvide streger
stribeX = stribeX + xSpeed;

rect(stribeX,740,100,20);
rect(stribeX + 150,740,100,20);
rect(stribeX + 300,740,100,20);
rect(stribeX + 450,740,100,20);
rect(stribeX + 600,740,100,20);
rect(stribeX + 750,740,100,20);
rect(stribeX + 900,740,100,20);
rect(stribeX + 1050,740,100,20);
rect(stribeX + 1200,740,100,20);
rect(stribeX + 1350,740,100,20);
rect(stribeX + 1500,740,100,20);
rect(stribeX + 1650,740,100,20);

//Ekstra pynt
image(skull,430,820,50,50);
//Hus1
image(path,1020,473);
image(hus,1030,350);
//Hus2
image(path2,518,443);
image(hotel,450,71);

}
  
  
}
