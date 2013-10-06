import java.util.List;
import java.util.LinkedList;

List<Integer> a = new LinkedList<Integer>();
ShipManager manager;
Ship ship;
int lastTime;
boolean added = true;

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
  
  manager = new ShipManager();
  manager.addShip(ship);
}

public void draw() {
  try {
    Thread.sleep(10);
  } catch(InterruptedException e) {
    println(e);
  }
  background(100,100,100);
  manager.drawObjects();
  
  if(keyPressed) {
    if(key == 'a')
      ship.turn(radians(-1));
    else if(key == 'r') {
      added = false;
      manager.removeShip(ship);
    } else if(key == 'm' && added == false) {
      added = true;
      manager.addShip(ship);
    } else
      ship.turn(radians(1));
  }
}
