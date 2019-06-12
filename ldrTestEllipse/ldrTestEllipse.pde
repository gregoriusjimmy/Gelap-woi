import processing.serial.*;
int val;
String string1;
Serial myPort;

void setup(){
  size(600,600);
myPort = new Serial(this, Serial.list()[0], 9600);
}

void draw(){
  background(0);
  if(myPort.available()>0){
     string1 = myPort.readStringUntil('\n');
    if (string1 != null) {  
      string1 = trim(string1);
      val = int(string1);
  }
} fill(255);
  float mapVal = map(val,0,1024,0,500);
  ellipseMode(CENTER);
  ellipse(width/2,height/2,mapVal,mapVal);
}
