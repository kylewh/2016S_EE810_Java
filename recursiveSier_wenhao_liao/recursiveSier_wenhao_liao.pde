/*
 *@author: wenhao liao @CWID:10406242
*/

void setup(){
  size(600,600);
  frameRate(1);
}



void sierpinski(int x1, int y1, int x2, int y2, int x3, int y3 ,int level){
  if(level>0){
  triangle(x1,y1,x2,y2,x3,y3);
  sierpinski(x1,y1,(x2+x1)/2,(y2+y1)/2,(x3+x1)/2,(y3+y1)/2,level-1);
  sierpinski((x2+x1)/2,(y2+y1)/2,x2,y2,(x3+x2)/2,y3,level-1);
  sierpinski((x3+x1)/2,(y3+y1)/2,(x3+x2)/2,y2,x3,y3,level-1);
  }
}

int level = 0;
void draw(){
  sierpinski(width/2,0,0,height,width,height,8); 
}