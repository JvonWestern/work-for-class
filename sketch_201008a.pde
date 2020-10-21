Bishop_ bishop;

float By ;
float Bx ;
float By1;
float Bx1;
boolean Bc = false;

void setup(){
 size(1000,800);
  bishop = new Bishop_(500,400);
 By = bishop.gety();
 Bx = bishop.getx();


}

void draw(){
background(200,160,100);
bishop.display();

    
    
    println(Bc);
}
  void mousePressed(){
   if(Bc == false){
    if(mouseY <= By && mouseX <= Bx + 50 && mouseY >= By -100 && mouseX >= Bx - 50){
      Bc = true;
      bishop.sett1(150);
      
    }
   }
  }
  
  void mouseDragged(){
    if(Bc == true){
      bishop.setx(mouseX);
      bishop.sety(mouseY);
    }
  }
  
  
  void mouseReleased(){
      if(Bc == true){
      bishop.setx(mouseX);
      bishop.sety(mouseY);
      Bx = bishop.getx();
      By = bishop.gety();
      bishop.sett1(255);
      Bc = false;
    }   
}
