float max =255;
float x;
float easing = 0.02;

void setup(){
  size(400, 600);
  smooth();
  strokeWeight(2);
}

void draw(){
  
  if (mousePressed) {
    if (mouseButton == RIGHT) {
      max += (315-max)*easing;//295
    }
      
  }
  
  if (mousePressed) {
    if (mouseButton == LEFT) {
      max -= (315-max)*easing;
    }
  }
  
  else
  {
    if(max<255)
      max++;
    if(max>255 && max<315)
      max--;
  }
  
  background(255,245,245);
  ellipseMode(RADIUS);
  
  // Neck  
  stroke(201); // Set stroke to gray
  //line(266, 257, 266, 162); // Left 
  line(206, 357, 206, max+7); // Middle (276, 257, 276, 162)
  line(216, 357, 216, max+7); // Right  (286, 257, 286, 162)
  
  // Antennae
  line(206, max, 176, max-43); // Small
  line(206, max, 186, max-53); // Tall (276, 155, 256, 102)
  line(206, max, 196, max-55); // Medium (276, 155, 266, 100)
  
  // Body
  noStroke(); // Disable stroke
  fill(255,220,220); // Set fill to gray
  ellipse(194, 477, 33, 33); // Antigravity orb
  fill(255,70,70); // Set fill to black
  rect(149, 357, 90, 120); // Main body
  fill(255,220,220); // Set fill to gray
  rect(149, 374, 90, 6); // Gray stripe
  
  // Head  
  
  fill(255,178,178); // Set fill to black
  ellipse(206, max, 45, 45); // Head (276, 155, 45, 45)  155-195 ,y+40
  fill(255); // Set fill to white
  ellipse(218, max-5, 14, 14); // Large eye (288, 150, 14, 14)  150-190
  fill(255,111,111); // Set fill to black
  ellipse(218, max-5, 3, 3); // Pupil (288, 150, 3, 3)  150-190
  
  /*fill(153); // Set fill to light gray
  ellipse(263, 148, 5, 5); // Small eye 1 (263, 148, 5, 5)  148-188
  ellipse(296, 130, 4, 4); // Small eye 2 (296, 130, 4, 4)  138-178
  ellipse(305, 162, 3, 3); // Small eye 3 (305, 162, 3, 3)  162-202*/
}
