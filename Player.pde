class Player {
  PVector playerPos;
  Player(float x, float y) {
    playerPos = new PVector(x,y);
  }
  
  void update() {
    noStroke();
    fill(255,0,0);
    ellipse(playerPos.x,playerPos.y,PLAYER_SIZE,PLAYER_SIZE);
    
    if(playerPos.x > 400) {
      playerPos.x = 0;
    } else if(playerPos.x < 0) {
      playerPos.x = 400;
    }
  }
  
  void setX(float x) {
    playerPos.x = x;
  }
  
  float getX() {
    return playerPos.x;
  }
  
  void setY(float y) {
    playerPos.y = y;
  }
  
  float getY() {
    return playerPos.y;
  }
}
