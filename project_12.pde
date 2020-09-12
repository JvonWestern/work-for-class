float  dir = random(-10,10);
float xpos = 450;

void setup(){
  size(900,900);
}

void draw(){
background(50,50,50);
if (xpos > width-25){
  dir = dir*+-1;
}else if(xpos < 25){
  dir = dir*-1;
}
ellipse(xpos,height/2,100,100);xpos = xpos+2*dir;
}
   
