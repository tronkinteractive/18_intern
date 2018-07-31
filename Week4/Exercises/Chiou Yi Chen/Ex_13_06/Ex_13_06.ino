const int buzzer = 8;
const int ledPin = 11;
const int ButtonPin = A0;
int tonerange =2;
int value = 0;
const int toneTable[7][5]={

    { 66, 131, 262, 523, 1046},  // C Do

    { 74, 147, 294, 587, 1175},  // D Re

    { 83, 165, 330, 659, 1318},  // E Mi

    { 88, 175, 349, 698, 1397},  // F Fa

    { 98, 196, 392, 784, 1568},  // G So

    {110, 220, 440, 880, 1760},  // A La

    {124, 247, 494, 988, 1976}   // B Si

};

char toneName[]="CDEFGAB";

char starTone[]="CCGGAAGFFEEDDCGGFFEEDGGFFEEDCCGGAAGFFEEDDC";
char tigerTone[]="CDECCDECEFGEFGGAGAECGAGFCCCGCCGC";
int starBeat[]={

    1,1,1,1,1,1,2, 1,1,1,1,1,1,2,

    1,1,1,1,1,1,2, 1,1,1,1,1,1,2,

    1,1,1,1,1,1,2, 1,1,1,1,1,1,2

};
int tigerBeat[]={
    1,1,1,2,   1,1,1,2, 1,1,2 ,1,1,2,

    1,1,1,1,1,2, 1,1,1,1,1,2,

    1,1,2,     1,1,2

};
int getTone(char symbol) {

    int toneNo = 0;

    for ( int ii=0; ii<7; ii++ ) {

        if ( toneName[ii]==symbol ) {

            toneNo = ii;

            break;

        }

    }

    return toneNo;

}

 

void setup() {
    Serial.begin(9600);  // Open serial port
    pinMode(buzzer,OUTPUT);
    pinMode(ButtonPin,INPUT);
    pinMode(ledPin,OUTPUT);
    noTone(buzzer);

}

 

void loop() {   
    int ii, length, toneNo;  
    int duration;
   
    
    // star
    length = sizeof(starTone)-1;

    for ( ii=0; ii<length; ii++ ) {
        
        value = analogRead(ButtonPin) / 4;
        Serial.println((byte)value);  //
        digitalWrite(ledPin,HIGH);
        if((byte)value<75 && (byte)value>=0){
        tonerange=1;
        //Serial.println("???");  //
        }
        if((byte)value<150 && (byte)value>=75){
        tonerange=2;
        //Serial.println("???");  //
        }
        if((byte)value>150 && (byte)value<=200){
        tonerange=3;
        //Serial.println("???");  //
        }
        if((byte)value>200){
        tonerange=4;
        //Serial.println("???");  //
        }
        
        toneNo = getTone(starTone[ii]);

        duration = starBeat[ii]*333;

        tone(buzzer,toneTable[toneNo][tonerange]);
        Serial.println(tonerange);
        delay(duration);

        noTone(buzzer);
        digitalWrite(ledPin,LOW);
        delay(100);

    }

    
    delay(2000);
 /* //tiger
    length = sizeof(tigerTone)-1;

    for ( ii=0; ii<length; ii++ ) {
        
        value = analogRead(ButtonPin) / 4;
        Serial.println((byte)value);  //
        digitalWrite(ledPin,HIGH);
        if((byte)value<75 && (byte)value>=0){
        tonerange=1;
        //Serial.println("???");  //
        }
        if((byte)value<150 && (byte)value>=75){
        tonerange=2;
        //Serial.println("???");  //
        }
        if((byte)value>150 && (byte)value<=200){
        tonerange=3;
        //Serial.println("???");  //
        }
        if((byte)value>200){
        tonerange=4;
        //Serial.println("???");  //
        }
        
        toneNo = getTone(tigerTone[ii]);

        duration = tigerBeat[ii]*333;

        tone(buzzer,toneTable[toneNo][tonerange]);
        Serial.println(tonerange);
        delay(duration);

        noTone(buzzer);
        digitalWrite(ledPin,LOW);
        delay(100);

    }
    delay(2000);*/
}

 
