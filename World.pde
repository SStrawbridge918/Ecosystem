public class World {
   public PVector pos,size; 


public World() {
 size = new PVector(800,800);
 pos = new PVector(0,0);
}

public void show() {
 fill(40,240,40);
 square(size.x,size.y,width/2*height/2);
}
}
