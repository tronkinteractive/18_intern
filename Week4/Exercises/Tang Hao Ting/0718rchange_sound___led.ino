int potPin = A1; // 可變電阻接在 pin 0 上
int ledPin = 13; // select the pin for the LED
const int buzzer = 8;

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
char lambTone[]="EDCDEEEDDDEEEEDCDEEEDDEDC";
int lambBeat[]={ 1,1,1,1,1,1,2, 1,1,2, 1,1,2, 1,1,1,1,1,1,2, 1,1,1,1,2 };

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
  length = sizeof(lambTone)-1;
    
  for ( ii=0; ii<length; ii++ ) {
    int sensorValue = analogRead(potPin);
    int pitch = sensorValue/204+0.5;
    toneNo = getTone(lambTone[ii]);
    duration = lambBeat[ii]*333;
    
    tone(buzzer,toneTable[toneNo][pitch]);
    digitalWrite(ledPin, HIGH);
    Serial.println(pitch);
    delay(duration);
    noTone(buzzer);       
    digitalWrite(ledPin, LOW);
    delay(20);
  }
}
