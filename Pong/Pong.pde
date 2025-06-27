boolean showNothing = false;

Ball ball;

void setup() {
 frameRate(60);
 
 size(800, 400);
  ball = new Ball(0.0, 0.0, 10.0);
 
}

void draw() {
  drawToScreen();
  ball.show();
  ball.move();
}


void drawToScreen() {
  if (!showNothing) {
    background(250); 
    stroke(0);
    strokeWeight(2);
  }
}
