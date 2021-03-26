class Background{
  
PImage skull;  
  
void tegnbaggrund(){
  //BLÅ HIMMEL!!!
  for ( int i = 0; i < width; i++) {
    stroke(map(i, 50, width, 0, 200), 0, 255-map(i, 0, width, 0, 0));
    line(0, i, width, i);
}
//JORD
noStroke();
rect(0,700,1600,200);
//Fortov
fill(150,150,150);
rect(0,700,1600,100);
fill(255);
//Hvide streger
rect(0,740,100,20);
rect(150,740,100,20);
rect(300,740,100,20);
rect(450,740,100,20);
rect(600,740,100,20);
rect(750,740,100,20);
rect(900,740,100,20);
rect(1050,740,100,20);
rect(1200,740,100,20);
rect(1350,740,100,20);
rect(1500,740,100,20);
rect(1650,740,100,20);

//Ekstra pynt
image(skull,430,820,50,50);

}
  
  
}
