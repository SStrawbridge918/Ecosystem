int timer = 0;
Creature[] creatures = new Creature[5];
Food[] food = new Food[40];
World world;

public void setup () {
  size(800,800);
  timer = millis();
  spawnCreatures();
  world = new World();
  spawnFood();
}

public void draw () {
  background(190);
  world.show();
  for(int i = 0; i < creatures.length; i++) {
  if(creatures[i].active == true) {
    creatures[i].show();
  creatures[i].move();
  }
  for(int k = 0; k < food.length; k++) {
    creatures[i].collides(food[k]);
  }
  }
  for(int j = 0; j < food.length;j++) {
   if(food[j].active == true){
   food[j].show();
   }
   
  }
  if ( 3 > 2) {
   timer++; 
  }
  for( int i = 0; i < creatures.length; i++) {
  if ( timer % 60 == 0) {
   creatures[i].hp= creatures[i].hp - 5;  //<>//
  }
  if (creatures[i].hp <= 0)
  creatures[i].active = false;
  }
}

public void spawnCreatures() {
for (int i = 0; i < creatures.length; i++) {
  creatures[i] = new Creature(width/2,height/2);
  
}
}

public void spawnFood() {
 for (int j = 0; j < food.length; j++) {
   food[j] = new Food((int)(Math.random()*world.size.x), (int)(Math.random()*world.size.y));
 }
}
