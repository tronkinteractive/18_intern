const int buzzer = 9;
int ledPin=3;
int rePin=0;
int bright;
int key=3;
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
char beeTone[]="GAGFEFGDEFEFGGAGFEFGDGEC";
int beeBeat[]={
    1,1,1,1, 1,1,2, 1,1,2, 1,1,2,
    1,1,1,1, 1,1,2, 2,2, 1,3,
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
    Serial.begin(9600);
    pinMode(buzzer,OUTPUT);
    pinMode(ledPin,OUTPUT);
    noTone(buzzer);
}
void loop() {
    int ii, length, toneNo;
    int duration;
    length = sizeof(beeTone)-1;
   
    for ( ii=0; ii<length; ii++ ) {
        toneNo = getTone(beeTone[ii]);
        duration = beeBeat[ii]*333;
        key=analogRead(rePin)/200;
        tone(buzzer,toneTable[toneNo][key]);
        digitalWrite(ledPin,HIGH);
        delay(duration);
        Serial.println(analogRead(rePin));
        noTone(buzzer);
        digitalWrite(ledPin,LOW);
        delay(20);
    }
    delay(500);

}
