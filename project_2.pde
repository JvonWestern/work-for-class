//this allows for a staic size of the window
void setup(){
size(900,900);
}

 void draw(){
background(255,255,255);
strokeWeight(10);
stroke(0,0,255);
line(0,0,mouseX,mouseY);
stroke(0,255,0);
line(900,0,mouseX,mouseY);
stroke(255,0,0);
line(450,900,mouseX,mouseY);
 }
