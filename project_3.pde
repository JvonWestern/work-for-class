//this allows for a staic size of the window
void setup(){
size(900,900);
}

 void draw(){
 background(255,255,255);
fill(255,0,0);
triangle(0,0,mouseX,mouseY,450,900);
fill(0,255,0);
triangle(900,0,mouseX,mouseY,450,900);
fill(0,0,255);
triangle(0,0,mouseX,mouseY,900,0);
 }
