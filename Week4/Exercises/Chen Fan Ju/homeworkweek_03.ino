//Pin location
const int LED01Pin = 7;
const int LED02Pin = 6;
const int LED03Pin = 5;
const int LED04Pin = 4;
const int trigPin = 9;
const int echoPin = 10;
const int musicPin = 11;
long duration;
int distance;

const int toneTable[7][5]={

    { 66, 131, 262, 523, 1046},  // C Do

    { 74, 147, 294, 587, 1175},  // D Re

    { 83, 165, 330, 659, 1318},  // E Mi

    { 88, 175, 349, 698, 1397},  // F Fa

    { 98, 196, 392, 784, 1568},  // G So

    {110, 220, 440, 880, 1760},  // A La

    {124, 247, 494, 988, 1976}   // B Si

};



void setup() {
  pinMode(LED01Pin, OUTPUT);
  pinMode(LED02Pin, OUTPUT);
  pinMode(LED03Pin, OUTPUT);
  pinMode(LED04Pin, OUTPUT);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  pinMode(musicPin, OUTPUT);
  noTone(musicPin);
  Serial.begin(9600); 
}

void loop() {
  //                  dicetance
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  
  duration = pulseIn(echoPin, HIGH);
  
  distance= duration*0.034/2;
  Serial.println(distance);

  
  //               LED part

    if(distance < 80){
        digitalWrite(LED04Pin, HIGH);
    }
    if(distance < 60){
        digitalWrite(LED03Pin, HIGH);
    }
    if(distance < 40){
        digitalWrite(LED02Pin, HIGH);
    }
    if(distance < 20){
        digitalWrite(LED01Pin, HIGH);
    }
  //
}
