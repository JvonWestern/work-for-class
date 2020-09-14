float Xdir = random(25,875);
float Ydir = 25;
float Spd = 5;
float red = 255;
float ble = 0;
int num = 0;

void setup(){
  size(900,900);
  textSize(32);
}

void draw(){
  background(red,0,ble);
  text(num,5,30);
  ellipse(Xdir,Ydir,50,50);Ydir = Ydir+1*Spd;
  rect(mouseX,800,75,25);
  if(Ydir >= 875){
    Ydir = 25;
    Xdir = random(25,875);
    Spd = Spd*1.1; 
    red = red + 25.5;
    ble = ble - 25.5;
    num = num - 1;
}if(Spd > 20){
  Spd = 20;
}if(Xdir >= mouseX && Xdir <= mouseX+75 && Ydir >= 800 && Ydir <= 825){
  Ydir = 25;
    Xdir = random(25,875);
    Spd = Spd*1.1;
    red = red - 25.5;
    ble = ble + 25.5;
    num = num + 1;
}if(red > 255){
  red = 255;
}if(ble > 255){
  ble = 255;
}if(num >= 10){
  ble = 255;
  Spd = 0;
  Xdir = 0;
  Ydir = 0;
  background(red,0,ble);
}if(num <= -10){
  red = 255;
  Spd = 0;
  Xdir = 0;
  Ydir = 0;
  background(red,0,ble);
}
}
