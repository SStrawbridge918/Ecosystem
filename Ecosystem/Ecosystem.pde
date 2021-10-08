Creature[] creatures = new Creature[5];
Food[] food = new Food[20];
World world;

public void setup () {
  size(800,800);
  spawnCreatures();
  world = new World();
  spawnFood();
}

public void draw () {
  background(190);
  world.show();
  for(int i = 0; i < creatures.length; i++) {
  creatures[i].show();
  creatures[i].move();
  }
  for(int j = 0; j < food.length;j++) {
   food[j].show(); 
   for(int i = 0; i < creatures.length;i++) {
   creatures[i].collides(food[j]);
   }
  }
}

public void spawnCreatures() {
for (int i = 0; i < creatures.length; i++) {
  creatures[i] = new Creature(width/2,height/2);
  
}
}

public void spawnFood() {
 for (int j = 0; j < food.length; j++) {
   food[j] = new Food((int)(Math.random()*world.size.x), (int)(Math.random()*world.size.y)); //<>//
 }
}
