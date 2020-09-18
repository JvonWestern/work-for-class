float Xdir1 = 100;
float Ydir1 = 450;
float Xdir2 = 800;
float Ydir2 = 450;
float Xdir3 = 450;
float Ydir3 = 450;
float SpdX = 2;
float SpdY  = 2;
float red = 255;
float ble = 0;
int num1 = 0;
int num2 = 0;
float strt = random(-1,1);
float strt2 = random(-3,3);
float strt3 = random(-3,3);
float bnc = random(.3,1);
float bnc2 = random(-1,1);
boolean P2 = false;
boolean P1 = false;

void setup(){
  size(900,900);
  textSize(32);
}

void draw(){
if(P2 == false && P1 == false){
background(255,0,255);
stroke(255,255,255);
fill(255,255,255);
rect(337.5,412.5,360,50);
rect(337.5,512.5,360,50);
fill(0,0,0);
text("Hit 1 For Singleplayer",350,450);
text("Hit 2 For Multiplayer",350,550);
}
  if(P1 == true){
    P2 = false;
background(255,0,255);
fill(255,255,255);
stroke(255,255,255);
  text(num1,5,30);
  text(num2,875,30);
  rect(Xdir1,Ydir1,25,75);
  rect(Xdir2,Ydir2,25,75);
  ellipse(Xdir3,Ydir3,25,25);Xdir3 = Xdir3 + SpdX;
  Ydir3 = Ydir3 + SpdY;
  if(strt >= 0){
    Xdir3 = Xdir3 +strt2 * SpdX;
    Ydir3 = Ydir3 +strt3 * SpdY;
  }if(strt < 0){
    Xdir3 = Xdir3 +strt3 * SpdX;
    Ydir3 = Ydir3 +strt2 * SpdY;
  }if(Xdir3 <= 0){
    SpdX = SpdX * -1;
     SpdX = SpdX + .1;
}if(Ydir3 <= 0){
   SpdY = SpdY * -1;
   SpdY = SpdY + .1;
}if(Ydir3 >=900){
   SpdY = SpdY * -1;
   SpdY = SpdY + .1;
}if(Xdir3 >=900){
   SpdX = SpdX * -1;
    SpdX = SpdX +.1;
}if(Xdir3 >= 100 && Xdir3 <= 125 && Ydir3 >= Ydir1 && Ydir3 <= Ydir1 + 75){
  SpdX = SpdX * -1;
  SpdX = SpdX +.3;
}if(Xdir3 >= 800 && Xdir3 <= 825 && Ydir3 >= Ydir2 && Ydir3 <= Ydir2 + 75){
  SpdX = SpdX * -1;
  SpdX = SpdX +.3;
}if(Xdir3 <= 0){
 num2 = num2 + 1; 
 Xdir3 = 450;
 Ydir3 = 450;
}if(Xdir3 >= 900){
 num1 = num1 + 1; 
 Xdir3 = 450;
 Ydir3 = 450;
}if( SpdX >= 5){
  SpdX = 5;
}if( SpdY >= 5){
  SpdY = 5;
}if(num1 >= 7){
  background(255,0,255);
  SpdX = 0;
  SpdY = 0;
  fill(0,0,0);
  text("Player One Wins!",350,450);
}if(num2 >= 7){
  background(255,0,255);
  SpdX = 0;
  SpdY = 0;
  fill(0,0,0);
  text("Player Two Wins!",350,450);
}
  }
  if(P2 == true){ 
    P1 = false;
  fill(255,255,255);
  background(255,0,255);
  text(num1,5,30);
  text(num2,875,30);
  rect(Xdir1,Ydir1 - 27.5,25,75);
  rect(Xdir2,Ydir2,25,75);
  ellipse(Xdir3,Ydir3,25,25);Xdir3 = Xdir3 + SpdX;
  Ydir3 = Ydir3 + SpdY;
  if(strt >= 0){
    Xdir3 = Xdir3 +strt2 * SpdX;
    Ydir3 = Ydir3 +strt3 * SpdY;
  }if(strt < 0){
    Xdir3 = Xdir3 +strt3 * SpdX;
    Ydir3 = Ydir3 +strt2 * SpdY;
  }if(Xdir3 <= 0){
    SpdX = SpdX * -1;
     SpdX = SpdX + .1;
     Ydir3 = Ydir3 + bnc;
}if(Ydir3 <= 0){
   SpdY = SpdY * -1;
   SpdY = SpdY + .1;
   Xdir3 = Xdir3 + bnc;
}if(Ydir3 >=900){
   SpdY = SpdY * -1;
   SpdY = SpdY + .1;
   Xdir3 = Xdir3 + bnc;
}if(Xdir3 >=900){
   SpdX = SpdX * -1;
    SpdX = SpdX +.1;
   Ydir3 = Ydir3 + bnc;
}if(Xdir3 >= 100 && Xdir3 <= 125 && Ydir3 >= Ydir3 && Ydir3 <= Ydir1 + 75){
  SpdX = SpdX * -1;
  SpdX = SpdX +.3;
  Xdir3 = Xdir3 + bnc2;
}if(Xdir3 >= 800 && Xdir3 <= 825 && Ydir3 >= Ydir2 && Ydir3 <= Ydir2 + 75){
  SpdX = SpdX * -1;
  SpdX = SpdX +.3;
  Xdir3 = Xdir3 + bnc2;
}if(Xdir3 <= 0){
 num2 = num2 + 1; 
 Xdir3 = 450;
 Ydir3 = 450;
}if(Xdir3 >= 900){
 num1 = num1 + 1; 
 Xdir3 = 450;
 Ydir3 = 450;
}if( SpdX >= 5){
  SpdX = 5;
}if( SpdY >= 5){
  SpdY = 5;
}if(Ydir3 > Ydir1 + 37.5){
  Ydir1 = Ydir1 + 3;
}else if(Ydir3 > Ydir1 - 37.5){
  Ydir1 = Ydir1 - 3;
}if(num1 >= 7){
  background(255,0,255);
  SpdX = 0;
  SpdY = 0;
  fill(0,0,0);
  text("Player Wins!",350,450);
}if(num2 >= 7){
  background(255,0,255);
  SpdX = 0;
  SpdY = 0;
  fill(0,0,0);
  text("Computer Wins!",350,450);
}
}
}
void keyPressed(){
 if(keyCode == UP){
   Ydir2 = Ydir2 - 45;
 }if(keyCode == DOWN){
   Ydir2 = Ydir2 + 45;
 }if(key == 'w'){
   Ydir1 = Ydir1 - 45;
 }if(key == 's'){
   Ydir1 = Ydir1 + 45;
 }if(key == '1'){
   P2 = true;
 }if(key == '2'){
   P1 = true;
 }
}
