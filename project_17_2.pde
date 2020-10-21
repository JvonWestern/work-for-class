int CarCount = 11;
int TruckCount = 6;
int TrainCount = 0;
int num = 0;
Frog frog;
boolean w = false;
boolean a = false;
boolean s = false;
boolean d = false;

Car[] myCars = new Car[CarCount];
Truck[] myTrucks = new Truck[TruckCount];



void setup(){
  size(900,900);
  myCars = new Car[CarCount];
  myTrucks = new Truck[TruckCount];
  
  for(int i = 0; i < CarCount; i++){
 myCars[i] = new Car(0,320+i*50,random(.3,1),color(random(0,255),random(0,255),random(0,255)));
}for(int i = 0; i < TruckCount; i++){
myTrucks[i] = new Truck(0,20+i*50,random(1,4),color(random(0,255),random(0,255),random(0,255)));
}

frog = new Frog(450,870,color(100,255,0));
}

void draw(){
 background(100);
 if (num < 1){
 for(int k = 0; k < CarCount; k++){
if(frog.getx() >= myCars[k].getx() && frog.getx() <= myCars[k].getx() + 15 && frog.gety() >= myCars[k].gety() && frog.gety() <= myCars[k].gety() + 10){
  frog.setx(450);
  frog.sety(870);
}

for(int j = 0; j < CarCount; j++){
myCars[j].display();
myCars[j].drive();
}

frog.display();
frog.hop();
 }
 }
 if( num > 1){
 frog.display();
frog.hop();
 
 
 for(int j = 0; j < TruckCount; j++){
myTrucks[j].display();
myTrucks[j].drive();
}



//Collision Detection

for(int T = 0; T < TruckCount; T++){
if(frog.getx() >= myTrucks[T].getx() && frog.getx() <= myTrucks[T].getx() + 15 && frog.gety() >= myTrucks[T].gety() && frog.gety() <= myTrucks[T].gety() + 10){
  frog.setx(450);
  frog.sety(870);
}
}
 }
if(frog.gety() <= 0){ 
  frog.setx(450);
  frog.sety(870);
  num+=1;
}
 




}

void keyReleased(){
  if(key == 'w'){
    w = true;
  }if(key == 's'){
    s = true;
  }if(key == 'a'){
    a = true;
  }if(key == 'd'){
    d = true;
  }
}
