Ball[] balls;

int count = 10;

void setup(){
 size(600,600);
 
 balls = new Ball[count];
 
 
 for(int i = 0; i < count; i++){
  balls[i] = new Ball(random(10,550), 10,color(255,255,255));
  }
}

void draw(){
  background(255);
  for(int i = 0; i < count; i++){
    balls[i].display();
  if (balls[i].getx() >= width ){
    balls[i].setc(color(100,200,100));
  }if (balls[i].getx() <= width ){
    balls[i].setc(color(200,50,200));
}if (balls[i].gety() >= width ){
    balls[i].setc(color(150,100,150));
}if (balls[i].gety() <= 0 ){
    balls[i].setc(color(50,100,50));
}
  }
}
