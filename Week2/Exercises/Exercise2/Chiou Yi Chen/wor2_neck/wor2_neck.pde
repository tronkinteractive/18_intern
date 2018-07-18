int x = 50; // x-coordinate
int y = 420; // y-coordinate
int bodyHeight = 110; // Body Height
int neckHeight = 10; // Neck Height
int radius = 45; // Head Radius
int ny = y - bodyHeight - neckHeight - radius; // Neck Y
int mouse_State = 0 ;
int move_state = 0 ;
void setup(){
  size(550, 450);
  smooth();
  strokeWeight(2);
  background(204);
  ellipseMode(RADIUS); 
  loop();
}
void draw(){
  background(204,125,125);
  println(neckHeight);
  detect_State();
  if(move_state==0){    
    paint();
    x+=10;
    if(x >= 500){
      move_state = 1;
    }
  }
  if(move_state==1){
    paint2();
    x-=5;
    if(x <= 50){
      move_state = 0;
    }
  }
  //paint2();
  delay(10);
}
void mousePressed(){
  if(mouseButton==LEFT)  
  mouse_State = 1;
}
void mouseReleased(){
    mouse_State = 0;
}
void detect_State(){
  if(mouse_State==1){
      if(ny<=0) ny=0;
      else ny -= 5 ;
  }else{
      if(ny==255) ny=255;
      else ny += 1 ;
  }
}
void paint(){
  crtl_Neck();
  crtl_Head();
  img();
} 
void paint2(){
  crtl_Neck2();
  crtl_Head2();
  img();
}
void crtl_Head(){
  // Antennae
  line(x+12, ny, x-18, ny-43);
  line(x+12, ny, x+42, ny-99);
  line(x+12, ny, x+78, ny+15);
  // Head
  fill(0);
  ellipse(x+12, ny, radius, radius);
  fill(255);
  ellipse(x+24, ny-6, 14, 14);
  fill(0);
  ellipse(x+24, ny-6, 3, 3);
  fill(153);
  ellipse(x, ny-8, 5, 5);
  ellipse(x+30, ny-26, 4, 4);
  ellipse(x+41, ny+6, 3, 3);
}
void crtl_Neck(){
  // Neck
  stroke(102);
  line(x+2, y-bodyHeight, x+2, ny);
  line(x+12, y-bodyHeight, x+12, ny);
  line(x+22, y-bodyHeight, x+22, ny); 
}
void crtl_Head2(){
  // Antennae
  line(x+12, ny, x-18, ny-43);
  line(x+12, ny, x+42, ny-99);
  line(x+12, ny, x+78, ny+15);
  // Head
  fill(0);
  ellipse(x-2, ny, radius, radius);
  fill(255);
  ellipse(x+24, ny-6, 14, 14);
  fill(0);
  ellipse(x+24, ny-6, 3, 3);
  fill(153);
  ellipse(x, ny-8, 5, 5);
  ellipse(x+30, ny-26, 4, 4);
  ellipse(x+41, ny+6, 3, 3);
}
void crtl_Neck2(){
  // Neck
  stroke(102);
  line(x-22, y-bodyHeight, x-22, ny);
  line(x-12, y-bodyHeight, x-12, ny);
  line(x-2, y-bodyHeight, x-2, ny); 
}
void img(){
  // Body
  noStroke();
  fill(102);
  ellipse(x, y-33, 33, 33);
  fill(0);
  rect(x-45, y-bodyHeight, 90, bodyHeight-33);
  fill(102);
  rect(x-45, y-bodyHeight+17, 90, 6);
}
