Player player;
ArrayList<Block> blocks = new ArrayList<Block>();

int score = 0;

final int PLAYER_SIZE = 20;
final int BLOCK_SIZE = 30;

void setup() {
  size(400, 400);
  player = new Player(0, 385);
  for (int i = 0; i < 10; i++) {
    blocks.add(new Block(random(400),0));
  }
}

void draw() {
  background(255);
  textSize(32);
  fill(0);
  text(score, 200, 40); 
  player.update();
  
  // Loop through all blocks
  for (Block block : blocks) {
    // Update blocks
    block.update();
    if(dist(player.getX(), player.getY(), block.getX(), block.getY()) < BLOCK_SIZE  && block.show == true) {
      score++;
      block.show = false;
    }
  }
}

void keyPressed() {
  if(key == CODED) {
    if (keyCode == LEFT) {
      player.setX(player.getX() - 15);
    } else if(keyCode == RIGHT) {
      player.setX(player.getX() + 15);
    }
  }
}
