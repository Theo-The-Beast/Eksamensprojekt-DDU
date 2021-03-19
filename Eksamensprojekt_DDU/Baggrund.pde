class Background{
  
void tegnbaggrund(){
  //BLÅ HIMMEL!!!
  for ( int i = 0; i < width; i++) {
    stroke(map(i, 50, width, 0, 200), 0, 255-map(i, 0, width, 0, 0));
    line(0, i, width, i);
}
//JORD
rect(0,700,1600,200);

}
  
  
}
