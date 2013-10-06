import java.util.List;
import java.util.LinkedList;

List<Integer> a = new LinkedList<Integer>();
Ship ship;
int lastTime;

public void setup() {
  size(600,600);
  Element shipDrawing = new Element() {
    @Override
    public void draw() {
      triangle(20,-20 ,0,20 ,-20,-20);
    }
  };
  ship = new Ship(shipDrawing);
  ship.moveTo( 150, 150);
  lastTime = millis();
}

public void draw() {
  background(100,100,100);
  ship.animate((millis() - lastTime)/10);
  lastTime = millis();
  ship.draw();
  
  if(keyPressed) {
    if(key == 'a')
      ship.turn(radians(-5));
    else
      ship.turn(radians(5));
  }
}

public void keyPressed() {
  System.out.println("key pressed: " + key);

}
