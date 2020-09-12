float Xdir = random(25,875);
float Ydir = 25;
float Spd = 5;
float red = 255;
float ble = 0;

void setup(){
  size(900,900);
}

void draw(){
  background(red,0,ble);
  if(Ydir >= 875){
    Ydir = 25;
    Xdir = random(25,875);
    Spd = Spd*1.1; 
    red = red + 10;
    ble = ble - 10;
}if(Spd > 20){
  Spd = 20;
}if(Xdir >= mouseX && Xdir <= mouseX+75 && Ydir >= 800 && Ydir <= 825){
  Ydir = 25;
    Xdir = random(25,875);
    Spd = Spd*1.1;
    red = red - 10;
    ble = ble + 10;
}if(red > 255){
  red = 255;
}if(ble > 255){
  ble = 255;
}
ellipse(Xdir,Ydir,50,50);Ydir = Ydir+1*Spd;
rect(mouseX,800,75,25);
}
