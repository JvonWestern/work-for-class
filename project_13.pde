float  dir = random(-10,10);
float xpos = 450;

float red =255;
float blue = 0;

void setup(){
  size(900,900);
}

void draw(){
background(red,0,blue);
if (xpos > width-25){
  dir = dir*+-1;
  red = red-5;
  blue = blue+5;
}else if(xpos < 25){
  dir = dir*-1;
  red = red-5;
  blue = blue+5;
}
ellipse(xpos,height/2,100,100);xpos = xpos+1*dir;
}
   
