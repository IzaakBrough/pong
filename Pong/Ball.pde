class Ball {
  float size;
  float posX;
  float posY;
  Velocity vel;
  
 
  float circleWidth;
  float circleHeight;
  
  Ball(float X, float Y, float s) {
    posX = X;
    posY = Y;
    float velX = random(s * -1, s);
    float velY = random(s * -1, s);
    vel = new Velocity(velX, velY);
    size = s;
  }
  
  void show() {
    fill(0);
    ellipseMode(CENTER);
    circleWidth = (width - (posX + size/2))/2; // edge pos / 2
    circleHeight = (height - (posY + size/2))/2;// edge pos / 2
    circle(circleWidth, circleHeight, size);
  }
  
  void move() {
    if(posX > 800 || posX < -800){
      vel.bounceH();
    }
    if(posY > 400 || posY < -400){
      vel.bounceV();
    }
    posX += vel.X;
    posY += vel.Y;
    System.out.println("x"+posX+"  y"+posY);
    
  }
  
  
}
