boolean showNothing = false;

Ball ball;

Flipper player1;
Flipper player2;

String moving; 

void setup() {
 frameRate(60);
 
 size(800, 400);
  ball = new Ball(-700, 0, 20.0, 5);
  
  player1 = new Flipper(5, 5, true);
  player2 = new Flipper(5, 5, false);
 
}

void draw() {
  drawToScreen();
  ball.show();
  ball.move();
  
  player1.show();
  player2.show();
  
  player1.move(moving);
}


void drawToScreen() {
  if (!showNothing) {
    background(250); 
    stroke(0);
    strokeWeight(2);
  }
}

  void keyPressed(){
    if (key == 'w' || key == 'W' ) {
      moving = "w";
      //player1.moveUp(true);
    }
    if (key == 's' || key == 'S' ) {
      moving = "s";
      //player1.moveDown(true);
    }
  }
  
  void keyReleased(){
    if (key == 'w' || key == 'W' ) {
      moving = null;
    }
    if (key == 's' || key == 'S' ) {
      moving = null;
    }
  }
