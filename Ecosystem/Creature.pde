public class Creature {
  public PVector pos, vel;
  public int speed = 5;
  public float hp = 100.0;
  public final int SIZE = 25;
  public final color COLOR = color(139,69,19);
  public boolean active = true;
  
  public Creature(int x, int y) {
    pos = new PVector(x,y);
  }
  
  public void show() {
    fill(COLOR);
    circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
    vel = PVector.random2D().mult(speed);
    
    pos.add(vel);
  }
  
  public void collides(Food f) {
    double dist = PVector.sub(this.pos,f.pos).mag(); //<>//
    if (dist <= this.SIZE / 2 + f.SIZE / 2) {
      hp++;
     // f.active = false;
      System.out.println("Hp: "+hp);
    }
  }
  
  public void eat(Food f) {
    
  }
  
  public void attack(Creature c) {
    
  }
}
