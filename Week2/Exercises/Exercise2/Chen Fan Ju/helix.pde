void helix(int x, int y){
  
  translate(headposeX, headposeY+445);
  if((headposeY+500)%10<5){
  pellerLeft=225;
  pellerRight=0;
  }
  else{
  pellerLeft=0;
  pellerRight=225;
  }
  line(0,15,0,-5);
  fill(pellerLeft);
  ellipse(18,-5,18,4);
  fill(pellerRight);
  ellipse(-18,-5,18,4);
  
  
  translate(-(headposeX),-(headposeY+445));
  
}
