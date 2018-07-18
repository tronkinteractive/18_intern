import processing.sound.*;

AudioIn mic;
Amplitude amp;

void setup() {
  size(500, 500);
  background(0);
  // Create an audio input and start it
  mic = new AudioIn(this, 0);
  mic.start();
  // Create a new amplitude analyzer and patch into input
  amp = new Amplitude(this);
  amp.input(mic);
}

void draw() {
  // Draw a background that fades to black
  noStroke();
  //fill(255, 170, 170, 10); //(26, 76, 102, 10)
  fill(255);
  rect(0, 0, width, height);
  
  // The analyze() method returns values between 0 and 1,
  // so map() is used to convert the values to larger numbers
  float diameter = map(amp.analyze(), 0, 1, 10, width/5);
  println(diameter);

  fill(62, 58, 57, diameter*1.5);
  //fill(55, 50, 85);
  ellipse(width/2, height/2, 100, 100);
  
  
  strokeWeight(1.3);
  stroke(250, 70, 100, 100);
  
  line(100, 250, 200, 250);    
  line(200, 250, 210, -diameter+230);//230  
  line(210, -diameter+230, 220, diameter+300);//300
  line(220, diameter+300, 225, -diameter/2+260);//260
  line(225, -diameter/2+260, 230, diameter+285);//285
  line(230, diameter+285, 245, -diameter+180);//180
  line(245, -diameter+180, 255, diameter+380);//380
  line(255, diameter+380, 265, -diameter/2+235);//235
  line(265, -diameter/2+235, 275, diameter+292);//292
  line(275, diameter+292, 285, -diameter/2+250);//250
  line(285, -diameter/2+250, 293, diameter+265);//265
  line(293, diameter+265, 300, 250);   
  line(300, 250, 400, 250);
  
  
  stroke(255, 210, 215, 150);
  
  line(100, 255, 205, 255);    
  line(205, 255, 215, -diameter+235);//230  
  line(215, -diameter+235, 225, diameter+290);//300
  line(225, diameter+290, 230, -diameter/2+265);//260
  line(230, -diameter/2+265, 235, diameter+275);//285
  line(235, diameter+275, 250, -diameter+185);//180
  line(250, -diameter+185, 260, diameter+370);//380
  line(260, diameter+370, 270, -diameter/2+240);//235
  line(270, -diameter/2+240, 280, diameter+282);//292
  line(280, diameter+282, 290, -diameter/2+255);//250
  line(290, -diameter/2+255, 298, diameter+255);//265
  line(298, diameter+255, 305, 255);   
  line(305, 255, 400, 255);

}
