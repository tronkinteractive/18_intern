void headpose(int x, int y){
  translate(x-276,y+345);
  line(276, 155, 246, 112); // Small
  line(276, 155, 306, 56); // Tall
  line(276, 155, 342, 170); // Medium
fill(0); // Set fill to black
  ellipse(276, 155, 45, 45); // Head
  fill(255); // Set fill to white
  ellipse(288, 150, 14, 14); // Large eye
  fill(0); // Set fill to black
  ellipse(288, 150, 3, 3); // Pupil
  fill(153); // Set fill to light gray
  ellipse(263, 148, 5, 5); // Small eye 1
  ellipse(296, 130, 4, 4); // Small eye 2
  ellipse(305, 162, 3, 3); // Small eye 3
   
  translate(-(x-276),-(y+345));
}
