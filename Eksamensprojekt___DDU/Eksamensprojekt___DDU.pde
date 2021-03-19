Spiller s = new Spiller();


void setup(){
size(500,500);
}

void draw(){
s.tegnSpiller();
s.bevagSpiller();
//s.bevagSpillerPress();

}

void keyPressed(){
s.bevagSpillerPress();
}

void keyReleased(){
s.bevagSpillerRelease();
}
