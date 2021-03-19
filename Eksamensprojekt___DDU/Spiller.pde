class Spiller{
int xPos;
int yPos;
int xSpeed;
int ySpeed;

void tegnSpiller(){
rect(xPos, yPos,20,20);

}

void bevagSpiller(){
  if(keyPressed && keyCode == LEFT){
  xPos=xPos-1;
  } 
  if(keyPressed && keyCode == RIGHT){
  xPos=xPos+1;}

}

}
