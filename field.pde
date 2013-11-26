float x = 0;
float y = 1440;
float d = 180;
float offset = 0;
float hue = 216;
void setup(){
  size(1440, 900);
  background(255);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  smooth();
}
void draw(){
  fill(hue, 60, random(80)+20 );
  ellipse(x + offset,y,d,d);
  x += d;
  if(x > width - offset){
    y -= d/2;
    x = 0;
    if(offset == -d/2){
      offset = 0;
    }else{
      offset = -d/2;
    }
  }
}
