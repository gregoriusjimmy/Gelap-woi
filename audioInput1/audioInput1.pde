import processing.sound.*;

SoundFile file;
Amplitude rms;
AudioIn in;
void setup() {
  size(640, 360);
   frameRate(60);
  //Load and play a soundfile and loop it
  //file= new SoundFile(this, "beat.aiff");
  //file.loop();
  in = new AudioIn(this,0);
  in.start();
  // Create and patch the rms tracker
  rms = new Amplitude(this);
  rms.input(in);
}      

void draw(){
  
  background(0);
  fill(255);
  float mapRms = map(rms.analyze(),0,1,0,2000);
  ellipse(width/2,height/2,600,mapRms);
}
