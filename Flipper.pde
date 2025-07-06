class Flipper {
  float flipperSize;
  
  float posX;
  float posY;
  
  float flipperX;
  float flipperY;

  float flipperSpeed;
  
  Flipper(float size, float speed, boolean player1){
    flipperSize = size;
    
    flipperSpeed = speed;
    
    if (player1) {
      posX = 750;
    }else{
      posX = -750;
    }
    
    
  }
  
   void show() {
    fill(0);
    rectMode(CENTER);
    flipperX = (width - (posX + flipperSize/2))/2; // edge pos / 2
    flipperY = (height - (posY + flipperSize/2))/2;// edge pos / 2
    rect(flipperX, flipperY, 2*flipperSize, 7*flipperSize);
  }
  
  void move(String dir){
    if (dir=="w"){
      posY++;
    } else if (dir=="s"){
      posY--;
    }
    System.out.println("x "+posX+"    y "+posY);
  }
}
