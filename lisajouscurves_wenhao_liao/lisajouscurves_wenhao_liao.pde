/*
 *@author:wenhao liao @CWID:10406242;
*/
void setup() {
  size(600,600);
  strokeWeight(0);
}

float x = 0, y = 0, t = 0;

void draw() {
  translate(width/2, height/2);
  scale(-width/2, -height/2);
  final float dx = 2*PI / width;
  float t0 = 0,  x0 = cos(13*t0), y0 = cos(15*t0);
  for (float t = 0; t < 2*PI; t += dx) {
    float x = cos(13*t), y = cos(15*t);
    line(x0,y0,x,y);
    x0 = x;
    y0 = y;
  }
    
}