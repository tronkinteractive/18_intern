import processing.sound.*;

AudioIn mic;
Amplitude amp;
  float dot=0.0;
  float bot=0.0;
void setup() {
  size(440, 440);
  background(0);
  // Create an audio input and start it
  mic = new AudioIn(this, 0);
  mic.start();
  // Create a new amplitude analyzer and patch into input
  amp = new Amplitude(this);
  amp.input(mic);
}

void draw() {
  bot=bot+17;
  dot=dot+23;
  // Draw a background that fades to black
 
  // The analyze() method returns values between 0 and 1,
  // so map() is used to convert the values to larger numbers
  float diameter = map(amp.analyze(), 0, 1, 0, width);
  // Draw the circle based on the volume
  float n = noise(dot)*width; float k = noise(bot)*height;
  fill(255);
  ellipse(n, k, diameter, diameter);
   noStroke();
   float R=(diameter*5)%255 ; float G=(diameter*7)%255; float  B=(diameter*9)%255;
  fill(R, G, B, 10);
  rect(0, 0, width, height);
  
}
