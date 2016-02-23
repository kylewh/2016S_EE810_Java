/*
 *@author: wenhao liao @CWID:10406242
*/

void setup() {
  size(600,600);
} //<>//


void draw() {
  translate(0, height/2);
  //scale(50, -50);
  scale(width/(10*PI), -height/2);
  strokeWeight(0);
  float dx = 10*PI/width;
  float x0 = 0, y0 = sin(x0) +(sin(3*x0))/3 + (sin(5*x0))/5 +(sin(7*x0))/7 +(sin(9*x0))/9;
  for (float x = 0; x < 10*PI; x += dx) {
    float y = sin(x) +(sin(3*x))/3 + (sin(5*x))/5 +(sin(7*x))/7 +(sin(9*x))/9;
    line(x0,y0,x,y);
    x0 = x;
    y0 = y;
  }
  
}