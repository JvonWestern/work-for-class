void setup(){
size(900,900);
}

void draw(){
if(mouseX > 350 && mouseX < 550 && mouseY > 350 && mouseY < 550){
  background(0,255,255); 
  fill(255,255,0);
} else {
  background(255,255,0); 
  fill(0,255,255);
}
 rect(width/2-100,height/2-100,200,200);
}
