class Velocity {
  float X;
  float Y;
  Velocity(float x, float y){
    X = x;
    Y = y;
  }
  
  void bounceV(){
    Y = Y * -1;
  }
  
  void bounceH(){
    X = X * -1;
  }
}
