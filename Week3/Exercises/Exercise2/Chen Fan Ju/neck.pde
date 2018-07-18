void neck(){
  translate(0,500);
  neckhight=headposeY;
  stroke(102); // Set stroke to gray
  line(266,257, 266, neckhight); // Left
  line(276, 257, 276, neckhight); // Middle
  line(286, 257, 286, neckhight); // Right
  translate(0,-500);
}
