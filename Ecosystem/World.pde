public class World {
   public PVector size; 


public World() {
 size = new PVector(width,height);
 
}

public void show() {
 fill(40,240,40);
 square(size.x,size.y,width*height/2);
}
}
