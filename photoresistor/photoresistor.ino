const int input = A0;
const int lamp = 3;
int state1 = 0;
int received;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(input, INPUT);
  pinMode(lamp,OUTPUT);
  digitalWrite(lamp,HIGH);
  Serial.println(100);
}

void loop() {

  int ldrStatus = analogRead(input);
  Serial.println(ldrStatus);
  delay(60);

  if(Serial.available()>0){
    received = Serial.read();
    }
   if(received == '1' && state1 == 0){
    digitalWrite(lamp,LOW);
    state1 = 1;
    received = 0;
    }
   if(received == '1' && state1 == 1){
    digitalWrite(lamp,HIGH);
    state1 = 0;
    received= 0;
    }
  
}
