import processing.sound.*;

AudioIn mic;
Amplitude amp;

float diameter = 200 ;
int y=0;
int x=0;
int colorDraw = 255;
int speed = 1 ;
int drawState = 0;
int lastTime = 0 ;
int delaytime = 10 ;
int r=200,g=255,b=255;
int state =1;
void setup(){
  size(440, 440);
  background(0);
  // Create an audio input and start it
  mic = new AudioIn(this, 0);
  mic.start();
  // Create a new amplitude analyzer and patch into input
  amp = new Amplitude(this);
  amp.input(mic);
}
void draw(){
  int Time = millis();
  int passedTime = Time - lastTime; 
  float diameter = map(amp.analyze(), 0, 1, 1, 10);
  float my = map(amp.analyze(), 0, 1, height-50, 0 );
  println(diameter);
  
  if(passedTime> delaytime){
    /*if(drawState==5){
      drawState=1;
    }
    else drawState ++;
    Frame1(drawState);
    lastTime = Time;*/
    stroke(r,g,b);
    fill(r,g,b);
    //line(x,y,x,height);
    rect(x, my, diameter, height);
    
  }
  if(state==1){
    if(x>=440){
      x-=diameter;
      state = 2 ;
    }
    else
      x+=diameter;
  }
  else if(state==2){
    if(x <= 0){
      x+=diameter;
      state = 1;
    }
    else
      x-=diameter;
  }
  
  if(r>=255)  r=0;
  else r++;
  if(g>=255)  g=0;
  else  g+=2;
  if(b>=255)  b=0;
  else  b+=3;
}
