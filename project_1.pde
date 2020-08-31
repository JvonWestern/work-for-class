//this allows for a staic size of the window
void setup(){
size(900,900);
}

//this allows the circles to trace the mouse and change the circles color 
 void draw(){
background(255,255,255);
fill(255,0,0);
ellipse(mouseX+15,mouseY-15,20,20);
fill(255,255,0);
ellipse(mouseX+15,mouseY+15,20,20);
fill(0,0,255);
ellipse(mouseX-15,mouseY-15,20,20);  
fill(0,255,0);
ellipse(mouseX-15,mouseY+15,20,20);
}
