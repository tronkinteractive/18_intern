

void setup(){
  background(8,115,252);
  size(500,240);
  smooth();
  
  

  // Right creature
  beginShape();
  vertex(370, 240);
  vertex(360, 90+80);
  vertex(290, 80+80);
  vertex(340, 70+80);
  vertex(280, 50+80);
  vertex(420, 10+80);
  vertex(390, 50+80);
  vertex(410, 90+80);
  vertex(500, 220);
  vertex(500, 240);
  endShape();
}

void draw(){
 // int i = 2/3;
  //float t//est = 36/10 + 0.5;
  //println(i);
  
  
 background(8,115,252);
  //println("move");
  
  // Left duck body
  fill(0);
  ellipse(145,110,15,15);
  
  fill(250,215,8);
  beginShape();
  vertex(0, 190);
  vertex(50, 150);
  vertex(100, 140);
  vertex(100, 120);
  vertex(130, 90);
  vertex(155, 95);
  vertex(180, 115);
  vertex(180, 140);
  vertex(155, 165);
  vertex(180, 200);
  vertex(165, 240);
  vertex(0, 240);
  endShape();
  
  
  
  //left duck wing
  fill(250,215,8);
  beginShape();
  vertex(0, 190);
  vertex(90, 165);
  vertex(120, 200);
  vertex(100, 240);
  vertex(0, 230);
  endShape();
  
  //frameRate(0.5);
  int timer=millis();
  timer =  (timer / 1000);
  println(timer);
  if(timer % 2 == 0){
    println("even");
    beginShape();
    vertex(180, 115);
    vertex(205, 127);
    vertex(183, 127);
    vertex(205, 127);
    vertex(180, 140);
    vertex(180, 115);
    endShape();
  }else{
    println("odd");
     beginShape();
    vertex(180, 115);
    vertex(205, 118);
    vertex(183, 127);
    vertex(205, 136);
    vertex(180, 140);
    vertex(180, 115);
    endShape();
  }
  
  
  
  if(timer%2==0){
    //left duck mouse
    fill(254,184,8);
    beginShape();
    vertex(180, 115);
    vertex(205, 127);
    vertex(183, 127);
    vertex(205, 127);
    vertex(180, 140);
    vertex(180, 115);
    endShape();
  }
  else if(timer%1==0){
    fill(254,184,8);
    //left duck mouse open
    beginShape();
    vertex(180, 115);
    vertex(205, 118);
    vertex(183, 127);
    vertex(205, 136);
    vertex(180, 140);
    vertex(180, 115);
    endShape();
   
  }
  
 
  
  if(timer % 2 == 0){
     fill(0);
  ellipse(145,110,15,15);
    
    fill(#3D9B48);
    beginShape();
    vertex(370, 240);
    vertex(360, 90+80);
    vertex(290, 80+120);
    vertex(340, 70+80);
    vertex(280, 50);
    vertex(420, 10+80);
    vertex(390, 50+80);
    vertex(410, 90+80);
    vertex(500, 220);
    vertex(500, 240);
    endShape();
    
     
   
  
  }else{
   fill(0);
  ellipse(145,110,15,15);
    
    fill(#3D9B48);
    beginShape();
    vertex(370, 240);
    vertex(360, 90+80);
    vertex(290, 80+80);
    vertex(340, 70+80);
    vertex(280, 50+80);
    vertex(420, 10+80);
    vertex(390, 50+80);
    vertex(410, 90+80);
    vertex(500, 220);
    vertex(500, 240);
    endShape();
    
  }
}
