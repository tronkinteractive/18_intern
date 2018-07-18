void setup(){
  size(960, 240);
  smooth();
}

void draw(){
    background(200);
    int  duration = millis();
    int  time = duration%17000;
    //Left creature
    int horn01X; int horn01Y;
    int mouth01Upx; int mouth01Upy;
    int mouth01Downx; int mouth01Downy;
        //speak01
    if(((time>1000)&&(time<1500))||
         ((time>2000)&&(time<2500))||
         ((time>3000)&&(time<3500))||
         ((time>8500)&&(time<9000))||
         ((time>9500)&&(time<10000))||
         ((time>10500)&&(time<11000))        
            ){
           horn01X=200;  horn01Y=30;
           mouth01Upx=420;  mouth01Upy=160;
           mouth01Downx=400;  mouth01Downy=160;          
    }else{
           horn01X=160;  horn01Y=40;
           mouth01Upx=420;  mouth01Upy=120;
           mouth01Downx=400;  mouth01Downy=180;
    }
    beginShape();
    fill(255);
    vertex(100, 240);
    vertex(200, 180);
    vertex(220, 120);
    vertex(horn01X, horn01Y);
    vertex(mouth01Upx, mouth01Upy);
    vertex(320, 160);
    vertex(mouth01Downx, mouth01Downy);
    vertex(280, 200);
    vertex(260, 240);
    endShape();
    
    int eye01x; int eye01y;
    if(time>8500){
         eye01x=32; eye01y=32;
 
    }else{
        eye01x=16; eye01y=16;
    }
    fill(0);
    ellipse(310, 120, eye01x, eye01y);
    if(time>8500){
            fill(255);
         ellipse(310, 120, 16, 16);
    }
    // Right creature
    int horn02x; int horn02y;
    int mouth02Upx; int mouth02Upy;
    int mouth02Downx; int mouth02Downy;
    if(((time>4500)&&(time<5000))||
       ((time>5500)&&(time<6000))||
       ((time>6500)&&(time<7000))||
       ((time>12500)&&(time<13000))||
       ((time>13500)&&(time<14000))||
       ((time>14500)&&(time<15000))
       ){
        horn02x=800; horn02y=5;
        mouth02Upx=560; mouth02Upy=140;
        mouth02Downx=580; mouth02Downy=140;       
    }else{
        horn02x=840; horn02y=20;
        mouth02Upx=560; mouth02Upy=100;
        mouth02Downx=580; mouth02Downy=160;
    }

    fill(255);
    beginShape();
    vertex(740, 240);
    vertex(720, 180);
    vertex(mouth02Downx, mouth02Downy);
    vertex(680, 140);
    vertex(mouth02Upx, mouth02Upy);
    vertex(horn02x, horn02y);
    vertex(780, 100);
    vertex(820, 180);
    vertex(920, 240);
    endShape();
    
    int eye02x=20; int eye02y=20;
    if(time>12500){
              eye02x=25; eye02y=10;
              line(660, 95, 720, 85);
              mark(750, 70);
    }
    fill(0);
    ellipse(690, 100, eye02x, eye02y);
    
    


 
}
void mark(int x, int y){
    translate(x,y);
    line(10,10,10,25);
    line(10,10,25,10);
    line(10,-10,10,-25);
    line(10,-10,25,-10);
    line(-10,-10,-25,-10);
    line(-10,-10,-10,-25);
    line(-10,10,-25,10);
    line(-10,10,-10,25);
    translate(-x,-y);
  }
