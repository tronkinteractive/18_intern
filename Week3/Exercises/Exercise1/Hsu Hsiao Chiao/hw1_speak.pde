int count=0;
void setup(){
  size(480, 120);
  frameRate(10);
}

void draw(){ 
  background(200);
  if(count%5==1)
  {
    open();
    count++;
  }
  else
  {
    close();
    count++;
  }
}

void close(){
  // Left creature
  fill(153, 176, 180);
  beginShape();
  vertex(50, 120);
  vertex(100, 90);
  vertex(110, 60);
  vertex(80, 20);
  vertex(200, 77);//mouth
  vertex(160, 80);
  vertex(190, 80);
  vertex(140, 100);
  vertex(130, 120);
  endShape();
  fill(0);
  ellipse(155, 60, 8, 8);
  
  // Right creature
  fill(176, 186, 163);
  beginShape();
  vertex(370, 120);
  vertex(360, 90);
  vertex(300, 70);//mouth
  vertex(340, 70);
  vertex(290, 67);
  vertex(420, 10);
  vertex(390, 50);
  vertex(410, 90);
  vertex(460, 120);
  endShape();
  fill(0);
  ellipse(345, 50, 10, 10);
}
void open(){
  // Left creature
  fill(153, 176, 180);
  beginShape();
  vertex(50, 120);
  vertex(100, 90);
  vertex(110, 60);
  vertex(80, 20);
  vertex(210, 60);//mouth
  vertex(160, 80);
  vertex(200, 90);
  vertex(140, 100);
  vertex(130, 120);
  endShape();
  fill(0);
  ellipse(155, 60, 8, 8);
  
  // Right creature
  fill(176, 186, 163);
  beginShape();
  vertex(370, 120);
  vertex(360, 90);
  vertex(290, 80);
  vertex(340, 70);
  vertex(280, 50);
  vertex(420, 10);
  vertex(390, 50);
  vertex(410, 90);
  vertex(460, 120);
  endShape();
  fill(0);
  ellipse(345, 50, 10, 10);
}
