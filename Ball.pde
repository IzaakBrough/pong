class Ball {
  float size;
  float posX;
  float posY;
  Velocity vel;
  float speed;
  
 
  float circleX;
  float circleY;
  
  Ball(float X, float Y, float S, float sp) {
    posX = X;
    posY = Y;
    speed = sp;
    float velX = random(sp * -1, sp);
    float velY = random(sp * -1, sp);
    vel = new Velocity(velX, velY);
    size = S;
  }
  
  void show() {
    fill(0);
    ellipseMode(CENTER);
    circleX = (width - (posX + size/2))/2; // edge pos / 2
    circleY = (height - (posY + size/2))/2;// edge pos / 2
    circle(circleX, circleY, size);
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
    //System.out.println("x "+posX+"    y "+posY);
    
  }
  
  
}
