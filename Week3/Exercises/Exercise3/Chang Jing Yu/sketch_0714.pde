import processing.sound.*;

AudioIn mic;
Amplitude amp;

float offset=60;
float speed=0.05;
float angle=0.0;
float scalar=0.0;

void setup() {
  size(440, 440);
  background(165,70,155);
  // Create an audio input and start it
  smooth();
  
  mic = new AudioIn(this, 0);
  mic.start();
  // Create a new amplitude analyzer and patch into input
  amp = new Amplitude(this);
  amp.input(mic);
}

void draw() {
  // background(50,160,240);
  float x=offset+cos(angle)*scalar;
  float y=offset+sin(angle)*scalar;
  
  float nx=x+50;
  float ny=y+50;
  float ax=x+150;
  float ay=y+150;
  float bx=x+320;
  float by=y+320;
  
  angle +=speed;
  scalar += speed;
  
  // Draw a background that fades to black
  noStroke();
  fill(26, 76, 102, 10);
  rect(0, 0, width, height);
  // The analyze() method returns values between 0 and 1,
  // so map() is used to convert the values to larger numbers
  float diameter = map(amp.analyze(), 0, 1, 20, width);
  // Draw the circle based on the volume
  fill(0);
  ellipse(x, y, diameter, diameter);
  ellipse(nx, ny, diameter, diameter);
  ellipse(ax, ay, diameter, diameter);
  ellipse(bx, by, diameter, diameter);
}
