int x = 60; // x-coordinate
int y = 420; // y-coordinate
int bodyHeight = 110; // Body Height
float neckHeightMax = 10; // Neck Height
float neckHeightCurrent=10;
float neckHeightMin=10;
int radius = 45; // Head Radius
float ny = y - bodyHeight - neckHeightCurrent - radius; // Neck Y
float nyMax=y - bodyHeight - neckHeightMax - radius;
float nyMin=y - bodyHeight - neckHeightMin - radius;
float easing=0.05;
boolean max=false;
void setup(){
  size(170, 480);
  background(204);
}
void draw(){
  smooth();
  strokeWeight(2);
  background(162,196,250);
  ellipseMode(RADIUS);
  if(mousePressed)
  {
    if(mouseButton==LEFT)
    {
      if(neckHeightMax<220)
      {
        neckHeightMax+=10;
        max=false;
        nyMax=y - bodyHeight - neckHeightMax - radius;
      }  
    }
  }
  if(!max)
  {
    neckHeightCurrent+=(ny-nyMax)*easing;
    ny= y - bodyHeight - neckHeightCurrent - radius;
    if(ny-nyMax<=1.5)
      max=true;
  }
  else if(max)
  {
      if(ny<=nyMin)
      {
        neckHeightCurrent-=0.5;
        ny= y - bodyHeight - neckHeightCurrent - radius;
        neckHeightMax=neckHeightCurrent;
      }
  }
  
  // Neck
  stroke(102);
  line(x+2, y-bodyHeight, x+2, ny);
  line(x+12, y-bodyHeight, x+12, ny);
  line(x+22, y-bodyHeight, x+22, ny);
  // Antennae
  line(x+12, ny, x-18, ny-43);
  line(x+12, ny, x+42, ny-99);
  line(x+12, ny, x+78, ny+15);
  // Body
  noStroke();
  fill(102);
  ellipse(x, y-33, 33, 33);
  fill(0);
  rect(x-45, y-bodyHeight, 90, bodyHeight-33);
  fill(102);
  rect(x-45, y-bodyHeight+17, 90, 6);
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
