/**
 * @author: Wenhao Liao , SWID:10406242
 * HW1c - Processing - Draw Grid
**/
int n = 4; // Delete to test n=8;
/*int n = 8;*/ //Delete the comment signs to test n=8;
void setup() {
  size(500,500);
}
void draw(){ 
  //For example :4*4 grid have both 4 horizontal&tranverse lines on the screen
  //So what is important is that we can not draw the first line on the left border
  //Then we know the x-coordinate  of 1st line is not 0 but 'width/(n+1)'
  //Samely, we canot draw the last line on the right boder, so the condition for execute
  //the loop is 'i<width'.
  for (int i=width/(n+1);i<width;i+=width/(n+1)){
    line(i,0,i,height);
  }
  //Also the same rule. no 1st line on the top & last line on the bottom.
  for (int i=height/(n+1);i<height;i+=height/(n+1)){
    line(0,i,width,i);
  }
}