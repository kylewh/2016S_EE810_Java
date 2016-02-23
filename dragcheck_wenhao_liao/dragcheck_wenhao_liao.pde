final int N = 19;
int BOX;
int currentColor = 1;
int [] board = new int[N*N];
boolean ontheKey = false;
boolean secondPressed = false;
float fx = 0.0;
float fy = 0.0;
float px;
float py;
int position;

void setup(){
  size(570,570);
  BOX = width / N;
}

void drawBoard () {
  background(250,200,0);
  for (int i = 0; i < N; i++){
    line(BOX/2, BOX/2+i*BOX, width-BOX/2, BOX/2+i*BOX);//x-aixs
    line(BOX/2+i*BOX, BOX/2, BOX/2+i*BOX, height-BOX/2);//y-aixs
  }
}

void placeChess() {
  for (int i = 0; i < board.length; i++){
    
    int x = i % N;
    int y = i / N;
    
    switch (board[i]){
      case 0:
        break;
      case 1:
        fill(0);
        
        if ( mouseX > x*BOX && mouseX <x*BOX + BOX
    && mouseY > y*BOX && mouseY < y*BOX + BOX){
          
        ontheKey = true;
        
        if(ontheKey){
          fill(240,0,0);
        }
        
    }   else {
          fill(0);
          ontheKey = false;
    }    
        ellipse(x*BOX + BOX/2, y*BOX + BOX/2, 0.9*BOX, 0.9*BOX);
        break;
        
      case 2:
        fill(255);
        
        if ( mouseX > x*BOX && mouseX <x*BOX + BOX 
    && mouseY > y*BOX && mouseY < y*BOX + BOX ){
          
        ontheKey = true;
        
        if(ontheKey){
          fill(200,0,0);
        }
        
    }   else {
          fill(255);
          ontheKey = false;
    }    
        ellipse(x*BOX + BOX/2, y*BOX + BOX/2, 0.9*BOX, 0.9*BOX);
        break;      
    }     
    
}
}

void chess(){
  int x = mouseX/BOX, y = mouseY/BOX;
    if (board[y*N+x] == 0){
    board[y*N +x] = currentColor;
    }
}

void turn(){
  currentColor = 3 - currentColor;
}

void draw(){
  drawBoard();
  placeChess();
}

  void getPosition(){
    int x = mouseX/BOX, y = mouseY/BOX;
    position = y*N+x;
    println(position);
  }
  
  void deleteOriginal(){
    board[position] = 0;
  }
    
    
  
  void mousePressed(){
    turn();
    getPosition();
  }

  void mouseDragged(){
    turn();
  }
  
  void mouseReleased(){
    deleteOriginal();
    chess();
    println(position);
  } 