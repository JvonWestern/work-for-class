void setup(){
size(900,900);
}

void draw(){
  if(mouseX< width/2){
  background(255,0,0);
  } else{
  background(0,255,0);
  }
  
  line (width/2,0,width/2, height);
}
