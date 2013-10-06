import java.util.List;
import java.util.LinkedList;

List<Integer> a = new LinkedList<Integer>();
MovableElement movable;

public void setup() {
  size(400,400);
  Element square = new Element() {
    @Override
    public void draw() {
      rect(0,0,50,50);
    }
  };
  movable = new MovableElement(square);
}

public void draw() {
  background(100,100,100);
  movable.moveTo(mouseX,mouseY);
  movable.draw();
}
