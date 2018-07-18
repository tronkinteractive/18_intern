import
ddf.minim.*; //import mp3

Minim minim;        
AudioPlayer player; 
int move = 0 ;
int offset = 50;

int x = 15 ;
int xState = 0 ;// 0 Idle 1 talk

int x2 = 15 ;
int x2State = 0 ;// 0 Idle 1 talk

int delayTime =200 ;
void setup(){
  size(480, 210);
  
  minim = new
  Minim(this);
  player = minim.loadFile("QAQ1.mp3");
  player.play();
  
  loop();
}
void draw(){  
  float m = millis();
  float mm = m/1000 ;
  println(mm);
  background(200);
  if(mm>=2.6 && xState == 0)
  {
    x=0;
    //xState = 1;
  }
  if(mm>=2.9 && xState == 0) x=15;
  
  if(mm>=5.8){
    xState = 1;
  }//
  if(mm>=8.5){
    xState = 0;
  }
  if(mm>=9.6){
    xState = 1;
  }//
  if(mm>=12.5){
    xState = 0;
  }
  
  if(mm>=15.2 && x2State ==0)x2=15;
  
  if(mm>=15.3){
    x2State = 1;
  }
  if(mm>=17.5){
    x2State = 0;
  }
  if(mm>=18.3){
    x2State = 1;
  }
  if(mm>=20.0){
    x2State = 0;
  }
  if(mm>=20.5){
    x2State = 1;
  }
  if(mm>=25.0){
    x2State = 0;
  }
  if(mm>=28.5 ){
    xState = 2;
  }
  if(mm>=29.2 ){
    x2State = 2;
  }
  if(mm>=30.2 ){
    x2State = 1;
  }
  if(mm>=29.5){
    xState=1;
  }
  if(mm>=30.5){
    xState=2;
    x2State=2;
  }
  if(mm>=31.5){
    xState=1;
    x2State=3;
  }
  if(mm>=32.0){
    xState=1;
    x2State=1;
  }
  if(mm>=32.3){
    xState=2;
    x2State=1;
  }
  if(mm>=32.5){
    xState=1;
    x2State=1;
  }
  if(mm>=32.5){
    xState=2;
    x2State=3;
  }
  if(mm>=32.7){
    xState=1;
    x2State=3;
  }
  if(mm>=33.0){
    xState=2;
    x2State=3;
  }
  if(mm>=33.3){
    xState=1;
    x2State=1;
  }
  if(mm>=33.5){
    xState=2;
    x2State=2;
  }
  if(mm>=35.0){
    xState=3;
    x2State=3;
  }
  if(mm>=35.0){
    xState=1;
    x2State=1;
  }
  if(mm>=36.0){
    xState=1;
    x2State=3;
  }
  if(mm>=37.0){
    xState=3;
    x2State=2;
  }
  if(mm>=38.0){
    xState=2;
    x2State=2;
  }
  if(mm>=38.5){
    xState=1;
    x2State=3;
  }
  if(mm>=39.5){
    xState=1;
    x2State=3;
  }
  if(mm>=43.5){
    xState=3;
    x2State=3;
  }
  if(mm>=44.5){
    xState=1;
    x2State=2;
  }
  if(mm>=45.5){
    xState=1;
    x2State=3;
  }
  if(mm>=46.5){
    xState=1;
    x2State=3;
  }
  if(mm>=48.5){
    xState=1;
    x2State=1;
  }
  if(mm>=59.5){
    if(move<=55)move+=5;
  }
  right(x2);
  left(x);

  
  detect_Xstate();
  detect_X2state();
  //print(xState);
  delay(delayTime);
  
}
void left(int my){
  // Left creature
  fill(153, 176, 180);
  beginShape();
  vertex(move+50, offset+160);
  vertex(move+100, offset+80);
  vertex(move+110, offset+50);
  vertex(move+80, offset+10);
  vertex(move+150, offset+20);//5
  vertex(move+210, offset+50+my);//5
  vertex(move+160, offset+70);
  vertex(move+200, offset+80-my);//7
  vertex(move+140, offset+90);
  vertex(move+130, offset+160);
  endShape();
  fill(0);
  ellipse(move+155, offset+60, 8, 8);
}
void detect_Xstate(){
  if(xState==1){
    if(x==0)
      x = 15; 
    else 
      x = 0;
  }
  if(xState==2){
    x = 0;
  }
  if(xState==3){
    x = 15;
  }
}
void detect_X2state(){
  if(x2State==1){
    if(x2==0)
      x2 = 15; 
    else
      x2 = 0;
  }
  if(x2State==2){
    x2 = 0;
  }
  if(x2State==3){
    x2 = 15;
  }
}
void right(int mx){
  // Right creature
  fill(255, 12, 125);
  beginShape();
  vertex(370-move, offset+160);
  vertex(360-move, offset+90);
  vertex(290-move, offset+80-mx);//3
  vertex(340-move, offset+70);
  vertex(280-move, offset+50+mx);//5
  vertex(320-move, offset+10);
  vertex(390-move, offset+50);
  vertex(410-move, offset+90);
  vertex(460-move, offset+160);
  endShape();
  fill(0);
  ellipse(345-move, offset+50, 10, 10);
}
