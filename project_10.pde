color C1 = color(255,0,255);
color C2 = color(0,255,255);

void setup(){
  size(900,900);
}

void draw(){
  if(mouseX < width/2){
    background(C1);
  } else if (mouseX >= width/2){
    background(C2);
  }
  }
    
