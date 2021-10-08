Creature[] creatures = new Creature[5];
Food[] food = new Food[10];
World world;

public void setup () {
  size(800,800);
  //creature = new Creature(width/2,height/2);
  spawnCreatures();
}

public void draw () {
  background(190);
  world.show();
  for(int i = 0; i < creatures.length; i++) {
  creatures[i].show();
  creatures[i].move();
  }
  for(int i = 0; i < food.length;i++) {
   food[i].show(); 
  }
}

public void spawnCreatures() {
for (int i = 0; i < creatures.length; i++) {
  creatures[i] = new Creature(width/2,height/2);
}
}

public void spawnFood() {
 for (int i = 0; i < food.length; i++) {
   food[i] = new Food((int)(Math.random()*world.size.x), (int)(Math.random()*world.size.y));
 }
}
