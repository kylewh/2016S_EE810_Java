/**
 * @author: Wenhao Liao , SWID:10406242
 * HW1a - Processing - Animated Rectangle
**/
void setup(){
  size(800,800);
}
int x=0, y=0;  // Define the intial position
int vx = +10;  // Define the speed of the square on the horizontal direction
int vy = +10;  // Define the speed of the square on the vertical direction
void draw(){
  background(0); // Filling the blank ouside the current shape
  stroke(0,255,0);
  strokeWeight(5);
  fill(255,0,0);
  rect(x,y,100,100);
  if (y==0){ // Initial state: move to the right side
    x = x + vx;
  }
  if (x == width-100){ // When square's border touch the frame then move vertically to the bottom
    y = y + vy;
  }
  if (y == width-100){ // Move back to the left side
    x = x - vx;
  }
  if (x==0 ) { // Move back to the top
    y = y - vy;
  }
  }