int neckhight=162;
int pellerLeft=0; int pellerRight=225;
float headV=3.0;
float Gforce=0.3;
int headposeX=276; int headposeY=155;
void setup(){
  size(720, 1000);
  smooth();
  strokeWeight(2);
  background(204);
  ellipseMode(RADIUS);
  // Neck
  stroke(102); // Set stroke to gray
  line(266, 257, 266, 162); // Left
  line(276, 257, 276, 162); // Middle
  line(286, 257, 286, 162); // Right
  // Antennae
  line(276, 155, 246, 112); // Small
  line(276, 155, 306, 56); // Tall
  line(276, 155, 342, 170); // Medium

  
}

void draw(){
    background(204);

    translate(mouseX-280,0);
    
    neck();
    body();
    helix(headposeX+276,headposeY+800);     //helix pose
    headpose(headposeX, headposeY);
    
    if((headposeY<=-451) && (headV>0)){    //bomp top
      headV=-headV/2.0;
    }
    
    headposeY -= headV;               //speed of head
    headV-=Gforce;
    
    if((headposeY>155)&&(headV<0)){   //bomp bottem
      headV=-headV/1.8;
    }
    
    translate(280-mouseX,0);
    line(0,910,width,910);
    
}

void mouseClicked(){
  headV=10.0;
   
 }
 
