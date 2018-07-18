PFont font;
int L_mouse=170;//90
int R_mouse=160;//80

void setup(){
  size(480, 200);
  font = createFont("SourceCodePro-Regular.ttf", 32);
  textFont(font);
}

void draw(){
  background(252,251,204);
  // Left creature
  fill(153, 176, 180);
  beginShape(); //body color
  vertex(50, 200); //120
  vertex(100, 170); //90
  vertex(110, 140); //60
  vertex(80, 100); //20
  vertex(210, 140); //60
  vertex(160, 160); //80
  
  if(L_mouse == 145) //65
    L_mouse = 170; //90
  vertex(200, L_mouse--); //move point, 200 90-65
  
  textSize(16);
  text("Y E E ~ ~ ~ ~ ~", 50, 60);
  
  vertex(140, 180); //100
  vertex(130, 200); //120
  endShape();
  fill(0); //eye color
  ellipse(155, 140, 8, 8); // 155 60 8 8
  
  
  // Right creature
  fill(176, 186, 163);
  beginShape(); //body color
  vertex(370, 200); //120
  vertex(360, 170); //90
  
  textSize(16);
  text("Y E E ~ ~ ~ ~ ~", 280, 40);
  if(R_mouse == 135) //55
    R_mouse = 170; //90
  vertex(290, R_mouse--); //move point, 290 80-55
  
  vertex(340, 150); //70
  vertex(280, 130); //50
  vertex(420, 90); //10
  vertex(390, 130); //50
  vertex(410, 170); //90
  vertex(460, 200); //120
  endShape();
  fill(0); //eye color
  ellipse(345, 130, 10, 10); //340 50 10 10
}
