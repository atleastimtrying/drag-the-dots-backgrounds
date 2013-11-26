float x = 0;
float y = 1440;
float d = 64;
float offset = 0;
float hue = 0;
void setup(){
  size(1920, 1200);
  background(0);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  smooth();
  frameRate(300);
  y = height;
}
void draw(){
  fill(random(12) * 30, 35, random(60) + 40 );
  ellipse(x + offset,y,d,d);
  x += d * 1.2;
  if(x > width - offset){
    y -= d * 1.2;
    x = 0;
    if(offset == -(d/2) * 1.2){
      offset = 0;
    }else{
      offset = -(d/2) * 1.2;
    }
  }
}
void keyPressed() {
  save(width + "x" + height +"_background-" + hue + "-" + d + ".png");
}
