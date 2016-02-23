/**
 * @author: Wenhao Liao , SWID:10406242
 * HW1f - Bouncing Ball
**/
int x = 0, y = 0;
int a = 5, b = 5;
int rad = 60;
void setup() {
  size(800, 600);
  smooth();
  noStroke();
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  x = width/2;
  y = height/2;
}

void draw() {
  background(0);
  fill(255, 255, 255);
  // Update the position of the shape
  x = x + 1*a;
  y = y + 1*b;
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction
  if(x<rad || x>width-rad){
    a=a*-1;
  }
  if(y<rad || y>height-rad){
    b=b*-1;
  } 
  ellipse(x, y, rad, rad);
}