float x=260;
float y=300;
int bodyHeight=153;
float neckHeight=56;
float angle=0;
float radius=45;


void setup(){
 size(600, 480);
 strokeWeight(2);
 background(0, 153, 204);    // Blue background
 ellipseMode(RADIUS); 
}


void draw(){
  background(0, 153, 204);
  if( mouseX>400){
   background(245,80,80);
    println("colorchange");
  }
  
  if( mouseX<200 || mouseY>120){
   background(92,190,100);
    println("colorchange");
  }

 neckHeight= 80 + sin(angle) * 50;
 angle += 0.05;
 float ny=y-bodyHeight-neckHeight-radius;


 // Neck
 stroke(255);                // Set stroke to white
 line(x,    y, mouseX, mouseY);   // Left
 line(x+10, y, mouseX+10, mouseY);   // Middle
 line(x+20, y, mouseX+20, mouseY);   // Right

// Antennae
line(mouseX+16, mouseY, 246, mouseY-43);   // Small
line(mouseX+16, mouseY, 306, mouseY-99);    // Tall
line(mouseX+16, mouseY, 342, mouseY+15);   // Medium

 // Body
 noStroke();                 // Disable stroke
 fill(255, 204, 0);          // Set fill to orange
 ellipse(264, 377, 33, 33);  // Antigravity orb 
 fill(0);                    // Set fill to black
 rect(219, 257, 90, 120);    // Main body
 fill(255, 204, 0);          // Set fill to yellow
 rect(219, 274, 90, 6);      // Yellow stripe

 // Head
 fill(0);                    // Set fill to black
 ellipse(mouseX+15, mouseY, radius, radius);  // Head
 fill(255);                  // Set fill to white
 ellipse(mouseX+28, mouseY-6, 14, 14);  // Large eye
 fill(0);                    // Set fill to black
 ellipse(mouseX+28, mouseY-6, 3, 3);    // Pupil
}
