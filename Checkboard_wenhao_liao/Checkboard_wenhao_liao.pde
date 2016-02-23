
void setup() {
  
  size(600,600);
}

final int N = 8;

/*
  int[] board = new int[N*N];
  //empty = 0;
  //balck = 1;
  //white = -1;
  void draw(){
    backgorund(0);
    for (int i = 0; i < N ; i++){
      line(BOX/2, i*BOX+BOX/2, width+BOX/2, i*BOX+BOX/2);
      line(i*BOX+BOX/2, BOX/2, I*BOX+BOX/2, height-BOX/2);
    }
    for (int i =0 , i <board.length;i++){
      int x = 1 % N;
      int y = 1 / N;
      switch (board[i]){
        case 0:
          break;
        case 1:
          fill(0);
          ellipse(x * BOX + BOX/2, y * BOX + BOX/2, BOX*0.8, BOX*0.8);
          break;
        case 2: // what should we do here.
          fill(255);
          ellipse(x * BOX + BOX/2, y * BOX + BOX/2, BOX*0.8, BOX*0.8);
          break;
      }
    }
  }
  
  void mousePressed() {
    int x = mouseX/BOX, y = mouseY/BOX;
    board [ y*N + x] = 1;
    //if (currentColor ==1)
    //  currentColor = 2;
    //else
    //  currentColor = 1;
    currentColor = 3 - currentColor; //attention.
      
*/

void draw() {
  background(0);
  final float BOX = width/N;
  color WHITE = color(255,255,255), BLACK = color(0,0,0);
  boolean b = false;
  for (int y = 0; y < height; y += BOX){
    b=!b;
  for (int x = 0; x < width; x += BOX) {
    b=!b;
    fill(b ? WHITE:BLACK);
    rect(x, y, BOX, BOX);
    noStroke();
    
  }
  }
  if(mousePressed){
      drawChess();
    }
}

void drawChess(){
    float Xpos = mouseX;
    float Ypos = mouseY;
    
    final int BOX = width/N;
    int tileX = ceil(Xpos/BOX);
    int tileY = ceil(Ypos/BOX);
    println("Position: X = ",tileX,"Y = ",tileY,"  ",Xpos/BOX,Ypos/BOX);
    fill(255,0,0);
    ellipse((tileX-0.5)*BOX,(tileY-0.5)*BOX,BOX,BOX);
    redraw();
    
}

void mouseReleased() {
  drawChess();
    }