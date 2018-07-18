import processing.sound.*;

AudioIn mic;
Amplitude amp;
int posX;
int posY;
int dX=2;
int dY=4;
int radius=50;
void setup() {
  size(440, 440);
  //fullScreen();
  //background(0);
  // Create an audio input and start it
  mic = new AudioIn(this, 0);
  mic.start();
  // Create a new amplitude analyzer and patch into input
  amp = new Amplitude(this);
  amp.input(mic);
  posX=220;
  posY=220;
}

void draw() {
  
  background(155,100);
  float speed = map(amp.analyze(), 0, 1, 20, 500);
  
  if(posX>=width-radius/2 || posX<=radius/2 )
  {
    dX=-dX;
   
  }
  if(posY>=height-radius/2 || posY<=radius/2 )
  {
    
    dY=-dY;
  }
  frameRate(speed);
  posX+=dX;
  posY+=dY;
  ellipse(posX,posY,radius,radius);
  println(posX);
}
