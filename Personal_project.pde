float X1 = 450;
float Y1 = 450;
float X2 = 1000;
float Y2 = 1000;
float X3 = random(50,850);
float Y3 = -30;
float X4 = 1000;
float Y4 = 1000;
float X5 = random(50,850);
float Y5 = -30;
float X6 = random(50,850);
float Y6 = -30;
float X7 = random(50,850);
float Y7 = -30;
float X8 = random(50,850);
float Y8 = -30;
boolean Fr = true;
float FrSpd = 2;
float Aspd = .2;
float num = 0;
boolean P1 = true;

void setup(){
 size(900,900); 
 textSize(20);
}

void draw(){
  //lvl1
if(num <= 1){
background(0,0,0);
fill(255,255,255);
text(num,5,20);
fill(77,255,90);
rect(X2,Y2,5,5);Y2 = Y2 - 1 * FrSpd;
rect(X4,Y4,5,5);Y4 = Y4 - 1 * FrSpd;
fill(255,255,255);
triangle(X1,Y1,X1 - 10,Y1 - 20,X1 - 20,Y1);
fill(17,159,245);
triangle(X1 - 5,Y1 - 10, X1 - 10, Y1 - 20, X1 - 15,Y1 - 10);
fill(183,137,68);
//asteriods
rect(X5,Y5,20,20); Y5 = Y5 + .2 * Aspd;
rect(X6,Y6,20,20); Y6 = Y6 + .2 * Aspd;
rect(X7,Y7,20,20); Y7 = Y7 + .2 * Aspd;
rect(X8,Y8,20,20); Y8 = Y8 + .2 * Aspd;
rect(X3,Y3,20,20); Y3 = Y3 + .2 * Aspd;
//right lazer
if(X4 >= X3 && X4 <= X3 + 20 && Y4 >= Y3 && Y4 <= Y3 + 20){
  Y3 = -30;
  X4 = 1000;
  X3 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
  Aspd =Aspd + .1;
}if(X4 >= X5 && X4 <= X5 + 20 && Y4 >= Y5 && Y4 <= Y5 + 20){
  Y5 = -30;
  X4 = 1000;
  X5 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X4 >= X6 && X4 <= X6 + 20 && Y4 >= Y6 && Y4 <= Y6 + 20){
  Y6 = -30;
  X4 = 1000;
  X6 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X4 >= X7 && X4 <= X7 + 20 && Y4 >= Y7 && Y4 <= Y7 + 20){
  Y7 = -30;
  X4 = 1000;
  X7 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X4 >= X8 && X4 <= X8 + 20 && Y4 >= Y8 && Y4 <= Y8 + 20){
  Y8 = -30;
  X4 = 1000;
  X8 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}
//left lazer
if(X2 >= X3 && X2 <= X3 + 20 && Y2 >= Y3 && Y2 <= Y3 + 20){
  Y3 = -30;
  X2 = 1000;
  X3 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X2 >= X5 && X2 <= X5 + 20 && Y2 >= Y5 && Y2 <= Y5 + 20){
  Y5 = -30;
  X2 = 1000;
  X5 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X2 >= X6 && X2 <= X6 + 20 && Y2 >= Y6 && Y2 <= Y6 + 20){
  Y6 = -30;
  X2 = 1000;
  X6 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X2 >= X7 && X2 <= X7 + 20 && Y2 >= Y7 && Y2 <= Y7 + 20){
  Y7 = -30;
  X2 = 1000;
  X7 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X2 >= X8 && X2 <= X8 + 20 && Y2 >= Y8 && Y2 <= Y8 + 20){
  Y8 = -30;
  X2 = 1000;
  X8 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(Aspd >= 15){
  Aspd = 15;
}if(Y5 >= 900){
P1 = false;
background(0,0,0);
fill(255,255,255);
text("You Loose :(",400,450);
text("Score:",400,475);
text(num,450,475);
}if(Y6 >= 900){
P1 = false;
fill(255,255,255);
background(0,0,0);
text("You Loose :(",400,450);
text("Score:",400,475);
text(num,450,475);
}if(Y7 >= 900){
fill(255,255,255);
P1 = false;
background(0,0,0);
text("You Loose :(",400,450);
text("Score:",400,475);
text(num,450,475);
}if(Y8 >= 900){
fill(255,255,255);
P1 = false;
background(0,0,0);
fill(255,255,255);
text("You Loose :(",400,430);
text("Score:",400,475);
text(num,455,475);
}



//lvl2
if(num > 1){
background(0,0,0);
fill(255,255,255);
text(num,5,20);
fill(77,255,90);
rect(X2,Y2,5,5);Y2 = Y2 - 1 * FrSpd;
rect(X4,Y4,5,5);Y4 = Y4 - 1 * FrSpd;
fill(17,159,245);
strokeWeight(7.5);
stroke(17,159,245);
fill(0,0,0);
ellipse(X1,Y1+10,100,100);
strokeWeight(1);
stroke(255,255,255);
fill(255,255,255);
triangle(X1 - 10,Y1 + 10,X1,Y1 - 10,X1 + 10,Y1 + 10);
triangle(X1 - 20,Y1 + 15,X1,Y1,X1,Y1 + 10);
triangle(X1 + 20,Y1 + 15,X1,Y1,X1,Y1 + 10);
fill(17,159,245);
stroke(0,0,0);
triangle(X1 - 5,Y1 + 5,X1,Y1 - 5,X1 + 5,Y1 + 5);
fill(183,137,68);
//asteriods
rect(X5,Y5,20,20); Y5 = Y5 + .2 * Aspd;
rect(X6,Y6,20,20); Y6 = Y6 + .2 * Aspd;
rect(X7,Y7,20,20); Y7 = Y7 + .2 * Aspd;
rect(X8,Y8,20,20); Y8 = Y8 + .2 * Aspd;
rect(X3,Y3,20,20); Y3 = Y3 + .2 * Aspd;
//right lazer
if(X4 >= X3 && X4 <= X3 + 20 && Y4 >= Y3 && Y4 <= Y3 + 20){
  Y3 = -30;
  X4 = 1000;
  X3 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
  Aspd =Aspd + .1;
}if(X4 >= X5 && X4 <= X5 + 20 && Y4 >= Y5 && Y4 <= Y5 + 20){
  Y5 = -30;
  X4 = 1000;
  X5 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X4 >= X6 && X4 <= X6 + 20 && Y4 >= Y6 && Y4 <= Y6 + 20){
  Y6 = -30;
  X4 = 1000;
  X6 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X4 >= X7 && X4 <= X7 + 20 && Y4 >= Y7 && Y4 <= Y7 + 20){
  Y7 = -30;
  X4 = 1000;
  X7 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X4 >= X8 && X4 <= X8 + 20 && Y4 >= Y8 && Y4 <= Y8 + 20){
  Y8 = -30;
  X4 = 1000;
  X8 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}
//left lazer
if(X2 >= X3 && X2 <= X3 + 20 && Y2 >= Y3 && Y2 <= Y3 + 20){
  Y3 = -30;
  X2 = 1000;
  X3 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X2 >= X5 && X2 <= X5 + 20 && Y2 >= Y5 && Y2 <= Y5 + 20){
  Y5 = -30;
  X2 = 1000;
  X5 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X2 >= X6 && X2 <= X6 + 20 && Y2 >= Y6 && Y2 <= Y6 + 20){
  Y6 = -30;
  X2 = 1000;
  X6 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X2 >= X7 && X2 <= X7 + 20 && Y2 >= Y7 && Y2 <= Y7 + 20){
  Y7 = -30;
  X2 = 1000;
  X7 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(X2 >= X8 && X2 <= X8 + 20 && Y2 >= Y8 && Y2 <= Y8 + 20){
  Y8 = -30;
  X2 = 1000;
  X8 = random(50,850);
  Aspd = random(1,3);
  num = num + 1;
   Aspd =Aspd + .1;
}if(Aspd >= 15){
  Aspd = 15;
}if(Y5 >= 900){
P1 = false;
background(0,0,0);
fill(255,255,255);
text("You Loose :(",400,450);
text("Score:",400,475);
text(num,450,475);
}if(Y6 >= 900){
P1 = false;
fill(255,255,255);
background(0,0,0);
text("You Loose :(",400,450);
text("Score:",400,475);
text(num,450,475);
}if(Y7 >= 900){
fill(255,255,255);
P1 = false;
background(0,0,0);
text("You Loose :(",400,450);
text("Score:",400,475);
text(num,450,475);
}if(Y8 >= 900){
fill(255,255,255);
P1 = false;
background(0,0,0);
fill(255,255,255);
text("You Loose :(",400,430);
text("Score:",400,475);
text(num,455,475);
}
}
}
}


void keyPressed(){
if(key == 'w'){
  Y1 = Y1 - 10;
}if(key == 's'){
  Y1 = Y1 + 10;
}if(key == 'a'){
  X1 = X1 - 10;
}if(key == 'd'){
  X1 = X1 + 10;
}if(key == 'f'){
  X2 = X1 - 5;
  Y2 = Y1 - 10;
  X4 = X1 - 20;
  Y4 = Y1 - 10;
}
}
