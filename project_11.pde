color red = 255;
color blue = 0;

void setup(){
  size(900,900);
}

void draw(){
  background(red,0,blue);
  }
   
void keyPressed(){
  red= red -10;
  blue = blue +10;
}
