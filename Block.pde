class Block {
  PVector blockPos;
  public boolean show = true;
  Block(float x, float y) {
    blockPos = new PVector(x,y);
  }
  
  void update() {
    if(show) {
      noFill();
      stroke(0,255,0);
      ellipse(blockPos.x,blockPos.y,BLOCK_SIZE,BLOCK_SIZE);
      blockPos.y += 5;
    }
    
    if(blockPos.y > 400) {
      blockPos.y = 0;
      blockPos.x = random(400);
    }
  }
  
  void setX(float x) {
    blockPos.x = x;
  }
  
  float getX() {
    return blockPos.x;
  }
  
  void setY(float y) {
    blockPos.y = y;
  }
  
  float getY() {
    return blockPos.y;
  }
}
